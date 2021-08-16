from libqtile.config import Key, Group
from libqtile.command import lazy
from .keys import mod, keys

groups = [Group(i) for i in "12345678"]
for i in groups:
    keys.extend([
    # mod1 + letter of group = switch to group
    Key([mod], i.name, lazy.group[i.name].toscreen()),
    # mod1 + shift + letter of group = switch to & move focused window to group
    Key([mod, "shift"], i.name, lazy.window.togroup(i.name)),
])

