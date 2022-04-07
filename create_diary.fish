if not test -e ~/mynote/diary/$(date +"%Y-%m-%d").md
    # if not test -e /home/yexiang/mynote/diary/s.md
    set old_file (ls -l ~/mynote/diary/ | awk '{print $9}' | sort | tail -n -1)
    if test $old_file
        cp ~/mynote/diary/$old_file ~/mynote/diary/$(date +"%Y-%m-%d").md
    end
end
vi ~/mynote/diary/$(date +"%Y-%m-%d").md
