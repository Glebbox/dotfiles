#!/bin/bash

TODO_FILE="$HOME/todo.txt"

json_escape() {
    local str="$1"
    str="${str//\\/\\\\}"   # \ → \\
    str="${str//\"/\\\"}"   # " → \"
    str="${str//$'\n'/\\n}" # перевод строки → \n
    echo -n "$str"
}

output() {
    if [ ! -f "$TODO_FILE" ]; then
        touch "$TODO_FILE"
    fi

    mapfile -t tasks < <(grep -v '^[[:space:]]*$' "$TODO_FILE")
    count=${#tasks[@]}

    if [ "$count" -eq 0 ]; then
        text="󰸩 0"
        tooltip="Нет задач"
    else
        text="󰸩 $count"
        tooltip=""
        for i in "${!tasks[@]}"; do
            if [ "$i" -gt 0 ]; then
                tooltip+=$'\n'
            fi
            tooltip+="$((i+1)). ${tasks[$i]}"
        done
    fi

    printf '{"text": "%s", "tooltip": "%s", "class": "todo"}\n' \
        "$(json_escape "$text")" \
        "$(json_escape "$tooltip")"
}

output

inotifywait -m -e modify,create,delete "$TODO_FILE" --quiet 2>/dev/null | while read -r _; do
    output
done
