for tuple in $(cat out | grep -oE '[A-Za-z]*\.cs\([0-9]*' | sort | uniq); do arr=($(echo $tuple | tr "(" " ") ); sed -i '' -e "${arr[2]} s/^/\\\\\\\\/" "${arr[1]}" ; done
