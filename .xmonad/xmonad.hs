import XMonad
import XMonad.Util.Run(spawnPipe)
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import System.IO


main = do
	xmproc <- spawnPipe "xmobar"
	xmonad $ ewmh defaultConfig
		{
			terminal = "urxvt",
			manageHook = manageDocks <+> (isFullscreen --> doFullFloat) <+> manageHook defaultConfig,
			layoutHook = smartBorders . avoidStruts $ layoutHook defaultConfig,
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
