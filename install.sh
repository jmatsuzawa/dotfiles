#!/usr/bin/env bash
set -e

SRC_SH_DIR=./.config/sh
: ${XDG_CONFIG_HOME:="${HOME}/.config"}

print_exec () {
  echo "$@"
  # $@
}

backup_orig_files() {
  for path in "${SRC_SH_DIR}"/.[a-z]*; do
    fname=$(basename "$path")
    [[ -e "${HOME}/${fname}" ]] && print_exec mv "${HOME}/${fname}"{,.orig}
  done
  [[ -e "${XDG_CONFIG_HOME}/dotfiles" ]] && print_exec mv "${XDG_CONFIG_HOME}/dotfiles"{,.orig}
}

install() {
  src_path=$1
  dst_path=$2

  src_dir=$(dirname $src_path)
  if [[ ! -d "${XDG_CONFIG_HOME}/${src_dir} "]]; then
    print_exec mkdir 
  src_path
}


if [[ ! -d ./.config ]]; then
  echo "dot files not found" 2>&1
  exit 1
fi




# [[ -e ${HOME}/.bash_profile ]] && print_exec mv ${HOME}/.bash_profile{,.orig}
# [[ -e ${HOME}/.bashrc ]] && print_exec mv ${HOME}/.bashrc{,.dist}
# [[ -e ${HOME}/.dashrc ]] && print_exec mv ${HOME}/.dashrc{,.orig}
# [[ -e ${HOME}/.zshenv ]] && print_exec mv ${HOME}/.zshenv{,.orig}
# [[ -e ${HOME}/.zshrc ]] && print_exec mv ${HOME}/.zshrc{,.orig}

print_exec mkdir -p "${XDG_CONFIG_HOME}"
backup_orig_files
print_exec cp -r ./.config/ "${XDG_CONFIG_HOME}"

