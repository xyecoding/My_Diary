read -l -p "set_color brcyan; echo '🔴 The name of the topic? [For example, Peace_and_Love] ' ; set_color normal; echo '> '" confirm
set filename $(date +"%Y-%m-%d")_$confirm.md

set filename_new (echo $filename | string replace -a _ ' ' | sed 's/^\w\|\s\w/\U&/g' | string replace -a ' ' _)

vi ~/myDiary/topics/$filename_new
