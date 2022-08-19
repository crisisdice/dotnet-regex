for tuple in $(cat out | grep -oE '[A-Za-z]*\.cs\([0-9]*' | sort | uniq); do arr=($(echo $tuple | tr "(" " ") ); sed -i '' -e "${arr[1]} s/^/\\\\\\\\/" "${arr[0]}" ; done
