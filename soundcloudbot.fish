#usr/local/bin/fish

#first like button: 467 451
#204 difference between the first two like buttons

echo "songs to autolike (ex: dance)"
read genre

osascript -e 'set height to 575
set width to 1212

tell application "Finder"
    set screen_resolution to bounds of window of desktop
end tell

set screen_width to item 3 of screen_resolution
set screen_height to item 4 of screen_resolution

tell application "Safari"
    activate
    reopen
    set y to (screen_height - height) / 2 as integer
    set x to (screen_width - width) / 2 as integer
    set the bounds of every window to {0, 0, 1000, 1000}
end tell

tell application "Safari"
    tell window 1
        set current tab to (make new tab with properties {URL:"https://soundcloud.com/search/sounds?q=%23'$genre'&filter.created_at=last_day"})
    end tell
end tell


'
sleep 3

while true
     python2.7 clicklike.py
     sleep 120
     osascript -e '
     set thescript to "if((window.pageYOffset + window.innerHeight)<document.body.clientHeight)
		{
    	window.scrollBy(0,204); // horizontal and vertical scroll increments
		}"
     tell application "Safari"
          tell window 1
	         do JavaScript thescript in current tab
         end tell
    end tell'

    #if cursor is the glove, then ok, but if not glove, then scroll slightly and check when it's pointing hand cursor.


end


################
################
################
################################
################################
################
################
################
################
################
################
################
################
################
################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################################
################
################
################################
################################
################
################
################
################
################
################
################
################
################
