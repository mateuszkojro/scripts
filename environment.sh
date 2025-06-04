function mk-search() {
	grep -rl "$1" "$2"
}

function mk-search_files() {
	grep -rlh "$1" "$2"
}

function mk-llm() {
	MK_MODEL="deepseek-r1:14b"
	echo "$MK_MODEL"
	ollama run $MK_MODEL $1
}

function mk-download() {
	curl $1 -o $2
}
