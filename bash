[BASH]

$ lynx -dump <url> | awk '/http/{print $2}' > links.txt
