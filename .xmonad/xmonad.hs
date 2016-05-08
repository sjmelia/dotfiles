import XMonad
import XMonad.Util.Run(spawnPipe)
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import System.IO

main = do
	xmproc <- spawnPipe "xmobar"
	xmonad $ defaultConfig
		{
			manageHook = manageDocks <+> manageHook defaultConfig,
			layoutHook = avoidStruts $ layoutHook defaultConfig,
			logHook = dynamicLogWithPP xmobarPP
				{ ppOutput = hPutStrLn xmproc,
				  ppLayout = (\str -> ""),
				  ppTitle = xmobarColor "green" "". shorten 50
				},
			modMask = mod4Mask
		}
		`additionalKeysP`
		[ ("M-f", spawn "firefox") ]
		`additionalKeys` [
		  ((0, 0x1008ff18), spawn "firefox")]
