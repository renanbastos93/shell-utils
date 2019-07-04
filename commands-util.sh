git branch | grep "<your search like>" | while read current_branch; \
    do git branch -D $current_branch; \
done;
