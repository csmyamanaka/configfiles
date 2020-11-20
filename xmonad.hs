-- XMonad Configuration File
-- "xmonad.hs"
-- M. Yamanaka
-- email: myamanaka@live.com
-- website: csmyamanaka.com
-- license: MIT (See included "LICENSE" file for details)

import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spacing
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.SpawnOnce

-- "tiles with gaps". I like the i3-gaps-esque appearance
tileswgaps = spacingRaw False (Border 5 5 5 5) True (Border 5 5 5 5) True $ Tall 1 0.05 0.5

-- additional keybindings including special keys
specKeys = [ ("M-S-l", spawn "sh .local/scripts/lockscript.sh")
           , ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume 0 +5%")
           , ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume 0 -5%")
           , ("<XF86AudioMute>", spawn "pactl set-sink-mute 0 toggle")
           ]

main = do
  statbar <- spawnPipe "xmobar $HOME/.config/xmobar/xmobarrc"
  xmonad $ docks desktopConfig
    { terminal = "urxvt"
    , modMask = mod4Mask
    , layoutHook = avoidStruts tileswgaps
    , workspaces = ["dev1", "dev2", "www1", "www2", "msc1", "msc2", "msc3", "doc1", "img1"]
    , manageHook = composeAll
      [ title =? "sxiv" --> doShift "img1"
      , title =? "qutebrowser" --> doShift "www1"
      , title =? "zathura" --> doShift "doc1"
      ]
    , logHook = dynamicLogWithPP $ def
      { ppOutput = hPutStrLn statbar
      , ppLayout = mempty
      , ppCurrent = xmobarColor "cyan" "#efefef"
      , ppHidden = xmobarColor "#b5b5b5" "#efefef"
      , ppHiddenNoWindows = xmobarColor "#454545"
      , ppTitle = shorten 15
      }
    } `additionalKeysP` specKeys
