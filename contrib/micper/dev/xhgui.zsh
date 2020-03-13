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



# function xhgui_import_latest {
#     set latest "/tmp/xhprof/"(ls -Art /tmp/xhprof | tail -n 1)

#     # Only import items we haven't imported yet
#     if test $latest = $xhgui_import_latest_filename
#         set_color red
#         echo "[ERROR] $latest already imported."
#         return
#     end

#     if test -f $latest
#         echo "Running: docker exec -u root -it f76a579bc4551c php external/import.php -f $latest"
#         set_color green
#         command docker exec -u root -it f76a579bc4551c php external/import.php -f $latest; and echo "Done!"

#         # TODO make sure it actually worked before setting this variable
#         set -U xhgui_import_latest_filename $latest
#     else
#         set_color red
#         echo "[ERROR] could not find latest /tmp/xhprof/foobar.xhprof file."
#     end
# }


# function xhgui_import
#     if test -f $argv
#         switch $argv
#             case "/tmp/xhprof/*"
#                 echo "Running: docker exec -u root -it f76a579bc4551c php external/import.php -f $argv"
#                 set_color green
#                 command docker exec -u root -it f76a579bc4551c php external/import.php -f $argv; and echo "Done!"
#             case "*"
#                 set_color red
#                 echo "[ERROR] path must start with \"/tmp/xhprof\""
#         end
#     else
#         set_color red
#         echo "[ERROR] could not find file."
#     end
# end
