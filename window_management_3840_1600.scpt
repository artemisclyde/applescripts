set screen_height to 1600
set screen_width to 3840
set divider_one to 800
set divider_two to 3040
set divider_vertical_one to 700

tell application "System Events" to tell process "Spotify"
	tell window 1
		set position to {divider_two, divider_vertical_one}
		set size to {screen_width - divider_two, screen_height - divider_vertical_one}
	end tell
end tell

tell application "System Events" to tell process "Firefox"
	tell window 1
		set position to {divider_one, 0}
		set size to {divider_two - divider_one, screen_height}
	end tell
	tell window 2
		set position to {0, 0}
		set size to {divider_one, screen_height}
	end tell
	tell window 3
		set position to {divider_two, 0}
		set size to {screen_width - divider_two, divider_vertical_one}
	end tell
end tell


tell application "System Events" to tell process "Code"
	tell window 1
		set position to {divider_one, 0}
		set size to {divider_two - divider_one, screen_height}
	end tell
end tell
