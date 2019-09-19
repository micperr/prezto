alias mountremotedevilnet='sshfs devilnet:/home/micper/domains/micper.usermd.net Remote'
alias start-selenium='java -jar -Dwebdriver.chrome.driver=~/Workspace/chromedriver ~/Workspace/selenium-server-standalone-3.141.59.jar'
alias devilnet-db-tunnel='ssh -f devilnet -L 8543:pgsql20.mydevil.net:5432 -N'

# Symfony
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
