import XMonad
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig

main = xmonad$defaultConfig
	{
		modMask = mod4Mask
	}
	`additionalKeysP`
	[ ("M-f", spawn "firefox") ]
