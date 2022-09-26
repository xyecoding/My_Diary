read -l -p "set_color brcyan; echo '🔴 The name of the topic? [For example, peace_and_love or peach and love] ' ; set_color normal; echo '> '" confirm
set filename $(date +"%Y-%m-%d")_$confirm.md

set filename_new (echo $filename | string replace -a _ ' ' | sed 's/^\w\|\s\w/\U&/g' | string replace -a ' ' _)

vi ~/myDiary/topics/$filename_new
