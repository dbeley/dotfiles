-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
-----  ██╗  ██╗███╗   ███╗ ██████╗ ███╗   ██╗ █████╗ ██████╗  -----
-----  ╚██╗██╔╝████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗ -----
-----   ╚███╔╝ ██╔████╔██║██║   ██║██╔██╗ ██║███████║██║  ██║ -----
-----   ██╔██╗ ██║╚██╔╝██║██║   ██║██║╚██╗██║██╔══██║██║  ██║ -----
-----  ██╔╝ ██╗██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║  ██║██████╔╝ -----
-----  ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═════╝  -----
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------

import System.IO
import Graphics.X11.ExtraTypes.XF86
import XMonad
import XMonad.Actions.CopyWindow
import XMonad.Actions.CycleWS (moveTo, WSType(NonEmptyWS), Direction1D(Next,Prev))
import XMonad.Actions.FloatKeys
import XMonad.Actions.GridSelect
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
-- import XMonad.Layout.Gaps
-- import XMonad.Layout.Grid
-- import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
-- import XMonad.Layout.ThreeColumns
import XMonad.ManageHook
import XMonad.StackSet as W
import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Util.Loggers
import XMonad.Util.NamedScratchpad
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.SpawnOnce
-- import XMonad.Actions.Navigation2D
import XMonad.Actions.DynamicProjects
import XMonad.Actions.SpawnOn
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Prompt.XMonad
import XMonad.Prompt

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad
    	$ dynamicProjects projects
    	$ ewmh
        -- $ navigation2D def
        -- 	(xK_Up, xK_Left, xK_Down, xK_Right)
        -- 	[(mod4Mask,               windowGo  ),
        --  	 (mod4Mask .|. shiftMask, windowSwap)]
        -- 	False
        $ def
        	{ manageHook = myManageHook
         -- , { workspaces = ["1:web","2:term","3:steam","4:dev","5:office","6","7","8","9","0","-","="]
        	, startupHook = myStartupHook
         	, layoutHook = myLayoutHook
         	, handleEventHook = myHandleEventHook
         	, logHook = dynamicLogWithPP xmobarPP
  	       	   { ppOutput    = hPutStrLn xmproc
  	       	   , ppTitle     = xmobarColor "gray" "" . shorten 30
  	       	   , ppCurrent   = xmobarColor "white" ""
  	       	   , ppVisible   = xmobarColor "white" "" . wrap "<" ">"
  	       	   , ppWsSep     = " | "
  	       	   , ppSort      = fmap (namedScratchpadFilterOutWorkspace.) (ppSort xmobarPP)
  	       	   , ppLayout    = const ""
  	       	   -- , ppExtras = [ padL battery ]
  	       	   }
         	, terminal = myTerminal
         	, modMask = myModMask
         	, borderWidth = myBorderWidth
         	, normalBorderColor = "#444444"
         	, focusedBorderColor = "#888888"
         	} `additionalKeysP` myKeys

myTerminal = "termite"

myModMask = mod4Mask

myBorderWidth = 3

myStartupHook = do
	spawnOnce "compton --config ~/.config/compton.conf"

myScratchpads = [
    -- fullscreen scratchpads
    NS "keepassxc" "keepassxc" (className =? "KeePassXC") (customFloating $ W.RationalRect 0 0 1 1),
    NS "nextcloud" "nextcloud" (className =? "Nextcloud") (customFloating $ W.RationalRect 0 0 1 1),
    NS "gnome-system-monitor" "gnome-system-monitor" (className =? "Gnome-system-monitor") (customFloating $ W.RationalRect 0 0 1 1),
    NS "psensor" "psensor" (className =? "psensor") (customFloating $ W.RationalRect 0 0 1 1)
			  ] where role = stringProperty "WM_WINDOW_ROLE"

myManageHook = manageDocks <+>
			   manageHook def <+>
			   composeAll
    	       [
    	       className =? "Gimp" --> doFloat
    	       ] <+>
    		   namedScratchpadManageHook myScratchpads

myLayoutHook = avoidStruts
             . spacingRaw True (Border 10 10 10 10) True (Border 4 4 4 4) True
             . mkToggle (NBFULL ?? EOT)
             -- $ tiled ||| Mirror tiled
             -- $ Grid ||| noBorders Full
             $ layoutHook def
             -- $ ThreeColMid 1 (3/100) (1/2)

myHandleEventHook = handleEventHook def <+> docksEventHook

-- Workspaces

wsSYS = "SYS"
wsWEB = "WEB"

projects :: [Project]
projects =
    [ Project { projectName	= wsSYS
           , projectDirectory = "~/"
           , projectStartHook = Just $ do spawnOn wsSYS myTerminal
                                          spawnOn wsSYS myTerminal
                                          spawnOn wsSYS myTerminal
           }
	, Project { projectName = wsWEB
              , projectDirectory = "~/"
              , projectStartHook = Just $ do spawn "qutebrowser"
              }
 ]

myKeys =
		[
        -- Launch Program
        ("M-d", spawn "rofi -show run")
	    , ("M-<Return>", spawn myTerminal)
        -- User Scripts
        , ("M-p", spawn "~/scripts/powermenu.sh")
        , ("<XF86TouchpadToggle>", spawn "~/scripts/touchpad_toggle.sh")
        , ("<Scroll_Lock>", spawn "~/scripts/change_layout.sh")
        , ("<XF86Display>", spawn "~/scripts/display_config.sh")
        , ("<XF86Launch1>", spawn "~/scripts/search.sh")
        , ("S-<XF86Launch1>", spawn "~/scripts/launch.sh")
        -- Screenshot
        , ("<Print>", spawn "maim ~/Nextcloud/7.\\ Images/Screenshots/$(date +%s).png")
        , ("S-<Print>", spawn "maim -s -o ~/Nextcloud/7.\\ Images/Screenshots/$(date +%s)_cropped.png")
        -- Lock
        , ("<XF86ScreenSaver>", spawn "slock")
        , ("<XF86Suspend>", spawn "slock")
        -- Volume
        -- , ("<XF86AudioRaiseVolume>", spawn "amixer -D pulse -q sset Master 1%+")
        -- , ("S-<XF86AudioRaiseVolume>", spawn "amixer -D pulse -q sset Master 10%+")
        -- , ("<XF86AudioLowerVolume>", spawn "amixer -D pulse -q sset Master 1%-")
        -- , ("S-<XF86AudioLowerVolume>", spawn "amixer -D pulse -q sset Master 10%-")
        , ("<XF86AudioRaiseVolume>", spawn "~/scripts/pulseaudiocontrol.sh up")
        , ("S-<XF86AudioRaiseVolume>", spawn "~/scripts/pulseaudiocontrol.sh bigup")
        , ("<XF86AudioLowerVolume>", spawn "~/scripts/pulseaudiocontrol.sh down")
        , ("S-<XF86AudioLowerVolume>", spawn "~/scripts/pulseaudiocontrol.sh bigdown")
        , ("<XF86AudioMute>", spawn "amixer -D pulse -q sset Master toggle")
        -- Named Scratchpads
        , ("M-<F9>", namedScratchpadAction myScratchpads "keepassxc")
        , ("M-<F10>", namedScratchpadAction myScratchpads "nextcloud")
        , ("M-<F11>", namedScratchpadAction myScratchpads "gnome-system-monitor")
        , ("M-<F12>", namedScratchpadAction myScratchpads "psensor")
        -- Workspace/Window Navigation
        , ("<XF86Back>", moveTo Prev NonEmptyWS)
        , ("<XF86Forward>", moveTo Next NonEmptyWS)
        , ("M-<Escape>", moveTo Next NonEmptyWS)
    	, ("M-S-<Escape>", moveTo Prev NonEmptyWS)
		, ("M-g", goToSelected def)
        -- Persistent Window
        , ("M-v", windows copyToAll) -- @@ Make focused window always visible
        , ("M-S-v",  killAllOtherCopies) -- @@ Toggle window state back
        -- Toggle Xmobar
		, ("<Pause>", sendMessage ToggleStruts)
		-- Kill focused window
		, ("M-<Backspace>", kill1)
		-- Fullscreen Mode
        , ("M-f", sendMessage $ Toggle NBFULL)
        -- Dynamic Projects
        , ("M-w", switchProjectPrompt myPromptTheme)
    	, ("M-S-w", shiftToProjectPrompt myPromptTheme)
        -- XMonad Prompt
        , ("M-x", xmonadPrompt myPromptTheme)
        -- Layout Management
        , ("M-<Tab>", sendMessage NextLayout)
        ]

myFont = "xft:Iosevka Nerd Font Mono:style=Italic:size=9:antialias=true:hinting=true,xft:Deja Vu:size=9"

myPromptTheme = def
    { font                  = myFont
    , bgColor               = "#c0c0c0"
    , fgColor               = "#2f4f4f"
    , fgHLight              = "#000000"
    , bgHLight              = "#ffffff"
    , borderColor           = "#808080"
    , promptBorderWidth     = 0
    , height                = 20
    , position              = Top
    }
