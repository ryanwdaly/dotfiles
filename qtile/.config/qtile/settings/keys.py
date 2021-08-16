# Qtile keybindings

from libqtile.config import Key 
from libqtile.command import lazy

## Constants
mod = "mod4"
terminal = "alacritty"

## Hotkeys
keys = [
     ### The essentials
     Key([mod], "d",
         lazy.spawn("dmenu_run -p 'Run:'"),
         desc='Run Launcher'
         ),
     Key([mod, "shift"], "Return",
         lazy.spawn("chromium-browser"),
         desc='Run Chromium Browser'
         ),
     Key([mod], "w",
         lazy.window.kill(),
         desc='Kill Window'
         ),
     Key([mod], "Return",
         lazy.spawn(terminal),
         desc='Launch Terminal'
         ),

     ### Apps 
     Key([mod], "r",
         lazy.spawn("ranger"),
         desc='Launch Ranger'
         ),
    Key([mod], "q",
        lazy.spawn("qutebrowser"),
        desc='Launch Qutebrowser'
        ),

     ### Switch focus of monitors
     Key([mod], "period",
                 lazy.next_screen(),
                 desc='Move focus to next monitor'
                 ),
         Key([mod], "comma",
         lazy.prev_screen(),
         desc='Move focus to prev monitor'
         ),

     ### Move windows up or down in current stack
     Key([mod], "j",
         lazy.layout.down()),
     Key([mod], "k",
         lazy.layout.up()),
     Key([mod], "h",
         lazy.layout.left()),
     Key([mod], "l",
         lazy.layout.right()),
    

     ### Move mindows 
     Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
     Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
     Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
     Key([mod, "shift"], "l", lazy.layout.shuffle_right()),

    ### Change size
     Key([mod, "control"], "j", lazy.layout.grow_down()),
     Key([mod, "control"], "k", lazy.layout.grow_up()),
     Key([mod, "control"], "h", lazy.layout.grow_left()),
     Key([mod, "control"], "l", lazy.layout.grow_right()),
    
     ### Toggle between different layouts as defined below
     Key([mod, "shift"], "q",
         lazy.next_layout()),

     Key([mod, "control"], "r",
         lazy.restart()),
     Key([mod, "control"], "q",
         lazy.shutdown()),
]
