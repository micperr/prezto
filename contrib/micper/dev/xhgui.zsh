function xhgui_run {
    docker run --name xhgui -v /tmp/xhprof:/tmp/xhprof -p 8888:80 -p 27017:27017 xhgui
}

function xhgui_start {
    docker start xhgui
}

function xhgui_stop {
    docker stop xhgui
}

function xhgui_import {
    for f in /tmp/xhprof/*
    do
        docker exec -it xhgui php external/import.php -f "$f"
        rm -f "$f"
    done
}

function xhgui_wipe {
    docker exec -it xhgui mongo xhprof --eval "db.results.remove({});"
}

function xhgui_create_indexes {
    docker exec -it xhgui mongo xhprof mongo.init.d/xhgui.js
}
