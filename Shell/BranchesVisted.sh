# Credit: https://stackoverflow.com/questions/9213415/in-vim-id-like-to-go-back-a-word-the-opposite-of-w
# Lets you see the last branches you've checked out
git reflog | egrep -io "moving from ([^[:space:]]+)" | awk '{ print $3 }' | awk ' !x[$0]++' | egrep -v '^[a-f0-9]{40}$' | head -n5
