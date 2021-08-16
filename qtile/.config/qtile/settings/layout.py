#Layouts
from libqtile import layout

from .colors import colors

## Layout config
column_conf = {
    'border_focus': colors[3][0],
    'border_focus_stack': '#881111',
    'border_on_single': False, #border when only single window
    'border_width': 1,
    'fair': False, #Add new windows to the column with least windows
    'grow_amount': 10, # Amount by which to grow a window/column
    'insert_position': 0, # pos of new wind rel to cur wind 0/before 1/after
    'margin': 3, # Margin of the layout  
    'margin_on_single': None, #Margin when only one window
    'num_columns': 3, # Preferred number of columns
    'split': True, # New coumns presentation mode
    'wrap_focus_columns': True, # Wrap the screen when moving focus acrs winds
    'wrap_focus_rows': True, # Wrap the screen when moving focus acrs winds
    'wrap_focus_stacks': True, # Wrap the screen when mvng fcs acrs stacked
    }

## Layouts
layouts = [
    layout.Max(),
    layout.Columns(**column_conf),
    #layout.MonadTall(**layout_conf),
]
