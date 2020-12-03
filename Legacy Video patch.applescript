# Version "1.1" Legacy Video Patch Copyright (c) 2020,chris1111 All right reserved
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
--	Properties configuting the droplet shell
property appletDropImage : "DocumentIcon"
property appletDropName : "Drop the volume HERE"
property appletSearchName : "Legacy Video Patch"
property appletSearchImage : "Badge"

on open dropped_files
	display dialog "
Installer Legacy Video Patch
" with icon note buttons {"Quit", "Proceed"} default button {"Proceed"}
	if the button returned of the result is "Proceed" then
		
		do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/System/payment_success.aif' &> /dev/null &" with administrator privileges
		## Set use_terminal to true to run the script in a terminal
		set use_terminal to true
		## Set exit_terminal to true to leave the terminal session open after script runs
		set exit_terminal to true
		## Set log_file to a file path to have the output captured
		set file_list to ""
		set the_command to quoted form of POSIX path of (path to resource "POST" in directory "Scripts")
		repeat with file_path in dropped_files
			set file_list to file_list & " " & quoted form of POSIX path of file_path
		end repeat
		set the_command to the_command & " " & file_list
		try
			if log_file is not missing value then
				set the_command to the_command & " | tee -a " & log_file
			end if
		end try
		try
			set use_terminal to false
		end try
		if not use_terminal then
			set progress description to "Legacy Video Patch"
			delay 2
			set progress total steps to 6
			set progress additional description to "Proceed Legacy Video Patch"
			delay 0.2
			set progress completed steps to 1
			set progress additional description to "Installing Legacy Video Patch"
			delay 0.2
			set progress completed steps to 2
			set progress additional description to "Installing Legacy Video Patch Wait . . ."
			delay 0.2
			do shell script the_command with administrator privileges
			set progress completed steps to 3
			set progress additional description to "Fix Permission"
			delay 5
			set progress completed steps to 4
			set progress additional description to "kextcache Repairing"
			delay 10
			set progress completed steps to 5
			set progress additional description to "Done"
			delay 3
			set progress completed steps to 6
			do shell script "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/System/Volume Unmount.aif' &> /dev/null &"
			set progress additional description to "Installing Legacy Video Patch Done"
			delay 0.2
			display alert "Installing Legacy Video Patch /Volume" message (dropped_files as text) buttons "Done" default button "Done" giving up after 5
			delay 0.5
			display alert "Your system will restart now!" message (dropped_files as text) buttons "Restart" default button "Restart" giving up after 3
			delay 0.5
			tell application "Finder"
				restart
			end tell
		end if
	end if
end open
