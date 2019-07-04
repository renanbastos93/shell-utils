### Command to remove all branchs by a filter
git branch | grep "<your search like>" | while read current_branch; \
    do git branch -D $current_branch; \
done;

# Output steps:
    ## git branch
        # dev
        # master
        # feat-x
        # feat-y
    ## grep "f"
        # feat-x
        # feat-y
    ## while read current_branch; do git branch -D $current_branch; done;
        # Deleted branch feat-x (was 216e46c).
        # Deleted branch feat-y (was a6b64c9).
