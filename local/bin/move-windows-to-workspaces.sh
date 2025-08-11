#!/bin/bash

sleep 30

#Place Firefox in workspace 1
wmctrl -x -r "firefox" -t 0
wmctrl -x -r "firefox" -b add,maximized_vert,maximized_horz

#Place Notion in workspace 2
wmctrl -x -r "Notion" -t 1
wmctrl -x -r "Notion" -b add,maximized_vert,maximized_horz


#Place Kitty in workspace 3
wmctrl -x -r "kitty" -t 2
wmctrl -x -r "kitty" -b add,maximized_vert,maximized_horz

#Place Discord in workspace 4
wmctrl -x -r "discord" -t 3
wmctrl -x -r "discord" -b add,maximized_vert,maximized_horz


#Place Teams in workspace 5
wmctrl -x -r "teams-for-linux" -t 4
wmctrl -x -r "teams-for-linux" -b add,maximized_vert,maximized_horz
