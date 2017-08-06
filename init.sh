FILEPATH=$(realpath $0)
ROOT=$(dirname $FILEPATH)

. $ROOT/makeitso/global-variables.sh
. $ROOT/makeitso/host-check.sh

hostOSCheck HOST_OS

if [ "$HOST_OS" = "Windows" ]; then
  . $ROOT/makeitso/windows-config.sh
fi

if [ "$HOST_OS" = "Ubuntu" ]; then
  . $ROOT/makeitso/ubuntu-config.sh
fi

. $ROOT/makeitso/deploy-configs.sh
. $ROOT/makeitso/unix-tooling.sh
. $ROOT/makeitso/node-setup.sh
