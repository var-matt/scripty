[BASH]

$ lynx -dump <url> | awk '/http/{print $2}' > links.txt


# Takes new lines from text file and creates new directories in current directory. 
  # improvments
    # 1. rm whitespace
    # 2. check for existing directory
xargs -d '\n' mkdir -p -- < list.txt


# Running commands on directories
for dir in *; do (cd "$dir" && <<<do something else>>>); done
