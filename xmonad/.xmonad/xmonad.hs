-- Xmonad configuration
-- this is a comment
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
-- import XMonad.Layout.Fullscreen
import XMonad.Layout.Gaps
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.ManageHook
import XMonad.StackSet as W
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.Loggers
import XMonad.Util.NamedScratchpad
import XMonad.Util.Run(spawnPipe)

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ ewmh $ defaultConfig
    -- xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig <+> myManageHook <+> namedScratchpadManageHook scratchpads
        , layoutHook = avoidStruts $ spacingRaw True (Border 10 10 10 10) True (Border 4 4 4 4) True $ 
                       layoutHook defaultConfig ||| 
                       noBorders Full |||
                       ThreeColMid 1 (3/100) (1/2) |||
                       Grid
        , handleEventHook = handleEventHook defaultConfig <+> docksEventHook <+> fullscreenEventHook
        -- , handleEventHook = handleEventHook defaultConfig <+> docksEventHook
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput    = hPutStrLn xmproc
            , ppTitle     = xmobarColor "gray" "" . shorten 50
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
        }
        `additionalKeys`
        [ ((myModMask, xK_d), spawn "rofi -show run")
        , ((myModMask, xK_p), spawn "~/scripts/powermenu.sh")
        , ((0, xK_Print), spawn "maim ~/Nextcloud/Images/Screenshots/$(date +%s).png")
        , ((shiftMask, xK_Print), spawn "maim -s -o ~/Nextcloud/Images/Screenshots/$(date +%s)_cropped.png")
        , ((0, xF86XK_ScreenSaver), spawn "slock")
        , ((0, xF86XK_Suspend), spawn "slock")
        , ((0, xF86XK_TouchpadToggle), spawn "~/scripts/touchpad_toggle.sh")
        , ((0, xK_Scroll_Lock), spawn "~/scripts/change_layout.sh")
        , ((0, xF86XK_Display), spawn "~/scripts/display_config.sh")
        , ((0, xF86XK_Launch1), spawn "~/scripts/search.sh")
        , ((shiftMask, xF86XK_Launch1), spawn "~/scripts/launch.sh")
        , ((0, xF86XK_AudioRaiseVolume), spawn "amixer -D pulse -q sset Master 1%+")
        , ((shiftMask, xF86XK_AudioRaiseVolume), spawn "amixer -D pulse -q sset Master 10%+")
        , ((0, xF86XK_AudioLowerVolume), spawn "amixer -D pulse -q sset Master 1%-")
        , ((shiftMask, xF86XK_AudioLowerVolume), spawn "amixer -D pulse -q sset Master 10%-")
        , ((0, xF86XK_AudioMute), spawn "amixer -D pulse -q sset Master toggle")
        -- Named scratchpads
        , ((myModMask, xK_F9), namedScratchpadAction scratchpads "keepassxc")
        , ((myModMask, xK_F10), namedScratchpadAction scratchpads "nextcloud")
        , ((myModMask, xK_F11), namedScratchpadAction scratchpads "gnome-system-monitor")
        , ((0, xF86XK_Back) , moveTo Prev NonEmptyWS)
        , ((0, xF86XK_Forward) , moveTo Next NonEmptyWS)
        , ((myModMask, xK_v ), windows copyToAll) -- @@ Make focused window always visible
        , ((myModMask .|. shiftMask, xK_v ),  killAllOtherCopies) -- @@ Toggle window state back
		, ((myModMask, xK_g), goToSelected defaultGSConfig)
		, ((0, xK_Pause), sendMessage ToggleStruts)
        ]

myTerminal = "termite"
myModMask = mod4Mask
myBorderWidth = 3
myManageHook = composeAll
    -- [ ifFullscreen --> doFullFloat
    [
    className =? "Gimp" --> doFloat
    ]

scratchpads = [
    -- fullscreen scratchpads
    NS "keepassxc" "keepassxc" (className =? "keepassxc") (customFloating $ W.RationalRect 0 0 1 1),
    NS "nextcloud" "nextcloud" (className =? "Nextcloud") (customFloating $ W.RationalRect 0 0 1 1),
    NS "gnome-system-monitor" "gnome-system-monitor" (className =? "Gnome-system-monitor") (customFloating $ W.RationalRect 0 0 1 1)
			  ] where role = stringProperty "WM_WINDOW_ROLE"
