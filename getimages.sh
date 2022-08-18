src=~/Google\ Drive/My\ Drive/yosuien-web-images
dst=./assets/images

for f in $( cd "$src" && ls *.jpg ); do
    if [ -e "$dst/$f" ] && cmp "$src/$f" "$dst/$f"; then
        : # OK
    else
        echo "$src/$f => $dst/$f"
        cp -p "$src/$f" "$dst/$f"
    fi
done 
