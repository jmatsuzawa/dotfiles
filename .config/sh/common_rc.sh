############################################################
# prevent multiple include (it's needed?)
############################################################
if test -n "$COMMON_SHRC_INCLUDED"; then
  return
fi
COMMON_SHRC_INCLUDED=0
export COMMON_SHRC_INCLUDED

############################################################
# Customize the following parameters if needed.
############################################################

############################################################
# functions
############################################################

# TODO:
#   This function is a stub for the momment.
#   I must implement this properly.
# Check which the user has root authorities.
# is_sudoer()
# {
#   return 0
# }

############################################################
# set environment variables
############################################################
# set $PATH
# if is_sudoer; then
#   PATH="${HOME}/opt/bin:${HOME}/bin:${PATH}:/usr/local/sbin:/usr/sbin:/sbin"
# else
#   PATH="${HOME}/opt/bin:${HOME}/bin:${PATH}"
# fi
# export PATH
PATH="${HOME}/opt/bin:${HOME}/bin:${PATH}:/usr/local/sbin:/usr/sbin:/sbin"


############################################################
# set others
############################################################
ulimit -c unlimited
# umask 002
