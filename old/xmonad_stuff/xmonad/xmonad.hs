import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar"
-- make sure to edit paths to xmobar and .xmobarrc to match your system.
-- If xmobar is in your $PATH, with config ~/.xmobarrc you don't need the
-- xmobar path or config file, use: xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig {
            manageHook = manageDocks <+> manageHook defaultConfig
            , layoutHook = avoidStruts  $  layoutHook defaultConfig
            , logHook = dynamicLogWithPP xmobarPP
                    { ppOutput = hPutStrLn xmproc
                    , ppTitle = xmobarColor "green" "" . shorten 50
                    }
            , modMask = mod4Mask
            , terminal = "gnome-terminal"
            }
