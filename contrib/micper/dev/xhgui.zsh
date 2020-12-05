function xhgui_up {
    docker-compose -f /home/micper/Workspace/foodback/xhgui/docker-compose.override.yml up -d
}

function xhgui_stop {
    docker-compose -f /home/micper/Workspace/foodback/xhgui/docker-compose.override.yml stop
}

function xhgui_import {
    for f in /tmp/xhprof/*
    do
        docker exec -it xhgui php external/import.php -f "$f"
        rm -f "$f"
    done
}

function xhgui_wipe {
    docker exec -it xhgui_mongo mongo xhprof --eval "db.results.remove({});"
}

function xhgui_create_indexes {
    docker exec -it xhgui_mongo mongo xhprof mongo.init.d/xhgui.js
}
