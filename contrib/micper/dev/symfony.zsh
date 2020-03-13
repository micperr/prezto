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
