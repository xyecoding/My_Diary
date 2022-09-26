read -l -p "set_color brcyan; echo '🔴 The name of the topic? [For example, Peace_and_Love] ' ; set_color normal; echo '> '" confirm
set filename $(date +"%Y-%m-%d")_$confirm.md
echo $filename

vi ~/myDiary/topics/$filename
