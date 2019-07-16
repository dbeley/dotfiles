-- Xmonad configuration
-- this is a comment
import XMonad
import Graphics.X11.ExtraTypes.XF86
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> myManageHook
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , handleEventHook = handleEventHook defaultConfig <+> docksEventHook
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "white" "" . shorten 50
                        }
        , terminal = myTerminal
        , modMask = myModMask
        , borderWidth = myBorderWidth
        , normalBorderColor = "#444444"
        , focusedBorderColor = "#888888"
        }
        `additionalKeys`
        [ ((myModMask, xK_p), spawn "rofi -show run")
        -- , ((myModMask, xK_d), spawn "rofi -show run")
        -- , ((0, xK_Print), spawn 'sleep 0.2; maim ~/Nextcloud/Images/Captures\ d\'écran/$(date +%s).png')
        -- , ((shiftMask, xK_Print), spawn "sleep 0.2; maim -s -o ~/Nextcloud/Images/Captures\ d\'écran/$(date +%s)_cropped.png")
        , ((0, xF86XK_ScreenSaver), spawn "slock")
        , ((0, xF86XK_Suspend), spawn "slock")
        , ((0, xF86XK_TouchpadToggle), spawn "~/scripts/touchpad_toggle.sh")
        , ((0, xK_Scroll_Lock), spawn "~/scripts/change_layout.sh")
        , ((0, xF86XK_Display), spawn "~/scripts/display_config.sh")
        , ((shiftMask, xK_F1), spawn "~/scripts/buku.sh")
        , ((0, xF86XK_Launch1), spawn "~/scripts/search.sh")
        , ((shiftMask, xF86XK_Launch1), spawn "~/scripts/launch.sh")
        , ((0, xF86XK_AudioRaiseVolume), spawn "amixer -q sset Master 1%+")
        , ((shiftMask, xF86XK_AudioRaiseVolume), spawn "amixer -q sset Master 10%+")
        , ((0, xF86XK_AudioLowerVolume), spawn "amixer -q sset Master 1%-")
        , ((shiftMask, xF86XK_AudioLowerVolume), spawn "amixer -q sset Master 10%-")
        , ((0, xF86XK_AudioMute), spawn "amixer -q sset Master toggle")
        ]

myTerminal = "termite"
myModMask = mod4Mask
myBorderWidth = 3
myManageHook = composeAll
	[ className =? "Gimp"		--> doFloat
	]
