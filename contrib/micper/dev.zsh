############
# Hacienda #
############
,v () {
  ( cd ~/Hacienda && vagrant $* )
}

,hacienda-build () {
  cd ~/Hacienda && docker build -t hacienda .
}

,hacienda-run () {
  docker run -itd --name hacienda hacienda
}

alias ,mountremotedevilnet='sshfs devilnet:/home/micper/domains/micper.usermd.net Remote'
alias ,start-selenium='java -jar -Dwebdriver.chrome.driver=~/Workspace/chromedriver ~/Workspace/selenium-server-standalone-3.141.59.jar'
alias ,devilnet-db-tunnel='ssh -f devilnet -L 8543:pgsql20.mydevil.net:5432 -N'

##########
# Docker #
##########
alias ,docker-harbour='~/Workspace/dev-server/.venv/bin/python3 ~/Workspace/dev-server/server.py'
alias ,docker-all-containers-stop-running='docker kill $(docker ps -q)'
alias ,docker-all-containers-delete='docker rm $(docker ps -a -q)'
alias ,docker-all-images-delete-dangling='docker rmi $(docker images --quiet --filter "dangling=true")'
alias ,docker-ps='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}"'
alias ,docker-all-containers-clean=',docker-all-containers-stop-running && ,docker-all-containers-delete'


###########
# Symfony #
###########
_sfBinPathLocate () { echo "php $(find . -maxdepth 2 -mindepth 1 -name 'console' -type f | head -n 1)" }
alias sf='bin/console'
alias sff='`_sfBinPathLocate`'
alias sfcc='sf cache:clear'
alias sfcw='sf cache:warmup'
alias sfserver='sf server:run -vvv'
alias sfrouter='sf debug:router'
alias sfcontainer='sf debug:container'
alias sfsu='sf doctrine:schema:update'
alias sfdc='sf doctrine:database:create'
alias sfdev='sf --env=dev'
alias sfprod='sf --env=prod'
alias sfspec='./vendor/bin/phpspec'


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
