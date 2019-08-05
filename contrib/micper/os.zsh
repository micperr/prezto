source "${0:h}/os/mac.zsh"
alias @@='cd ~/Workspace/_data/all-in-one'

export PATH="/Users/mperlinski/.ebcli-virtual-env/executables:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/curl/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/curl/include -I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
