alias harbour='~/Workspace/dev-server/.venv/bin/python3 ~/Workspace/dev-server/server.py'
alias docker-all-containers-stop-running='docker kill $(docker ps -q)'
alias docker-all-containers-delete='docker rm $(docker ps -a -q)'
alias docker-all-images-delete-dangling='docker rmi $(docker images --quiet --filter "dangling=true")'
alias psd='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}"'

######################
# Server executables #
######################
# function docker_exec() { docker exec -it -w $(pwd) ${@:1} }
# function docker_run() { docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) ${@:1} }
# function docker_run() { docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) ${@:1} }

# localhost_php container
# localhost_php_executables=('php' 'composer')
# for executable in $localhost_php_executables
# do
    # alias ${executable}="docker_exec localhost_php_c $executable"
    # alias ${executable}="docker_run localhost_php_i $executable"
# done

# localhost_node_executables=('node' 'npm' 'npx')
# for executable in $localhost_node_executables
# do
    # alias ${executable}="docker_run localhost_node_i $executable"
# done

# alias phpz='docker_run localhost_phpzts'


function v () {
    ( cd ~/Workspace && vagrant $* )
}
