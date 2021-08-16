# Bar
from libqtile import layout, bar, widget
from libqtile.config import Screen

from .widgets import widgets

## Screens
screens = [Screen(top=bar.Bar(widgets, opacity=1.0, size=20))]
