[BASH]

$ lynx -dump <url> | awk '/http/{print $2}' > links.txt


# Takes new lines from text file and creates new directories in current directory. 
  # improvments
    # 1. rm whitespace
    # 2. check for existing directory
xargs -d '\n' mkdir -p -- < list.txt


# Running commands on directories
for dir in *; do (cd "$dir" && <<<do something else>>>); done








#! /bin/sh

file=".seeds.txt"
folder="/home/user/dest/*"

for dir in *; do
        if grep -q "$dir" "$file"; then
                subfinder -d "$dir" -o out-subfinder.txt; mv "out-subfinder.txt" "$dir"

#               touch 1; mv "1" "$dir";
#               subfinder -d "$dir" -o 1
#               echo "$dir"

        else
                echo "No match found for $dir"
        fi
done
