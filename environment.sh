export EDITOR=vim
export MK_OBSIDIAN_DIR="/home/mkojro/sync/mk-vault"
export MK_MODEL="deepseek-r1:14b"

function mk-search() {
	if [ $# -lt 2 ]; then
		echo "Usage: [file] [pattern]"
		return
	fi

	grep -rl "$1" "$2"
}

function mk-search-files() {
	if [ $# -lt 2 ]; then
		echo "Usage: [file] [pattern]"
		return
	fi

	grep -rlh "$1" "$2"
}

function mk-llm() {
	echo "Running: $MK_MODEL"
	ollama run $MK_MODEL $1
}

function mk-download() {
	if [ $# -lt 2 ]; then
		echo "Usage: [url] [output file]"
		return
	fi

	curl $1 -o $2
}

function mk-edit() {
	gnome-text-editor $1
}

function mk-daily() {
	daily_path=$MK_OBSIDIAN_DIR/daily/$(date +%Y-%m-%d).md
	mk-edit $daily_path
}
