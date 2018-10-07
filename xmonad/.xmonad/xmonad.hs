import XMonad
import XMonad.Config.Desktop

main = do
    xmonad $ defaultConfig
        { terminal = myTerminal
        , modMask = myModMask
        , borderWidth = myBorderWidth
        }

myTerminal = "urxvt"
myModMask = mod4Mask
myBorderWidth = 3
