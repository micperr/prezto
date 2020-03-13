############
# Hacienda #
############
v () {
  ( cd ~/Hacienda && vagrant $* )
}

,hacienda-build () {
  cd ~/Hacienda && docker build -t hacienda .
}

,hacienda-run () {
  docker run -itd --name hacienda hacienda
}
