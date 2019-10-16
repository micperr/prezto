,script_uninstall_all_current_ruby_gems() {
  for gem in `gem list --no-versions`; do
    gem uninstall $gem -aIx
  done
}
