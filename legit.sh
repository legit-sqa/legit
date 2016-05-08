#!/bin/sh

DIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)/"
export PATH="$DIR:$PATH"
cmd=$1
shift

if test -a "$DIR$cmd.sh"
then
	. $cmd.sh
else
	. legit-setup.sh

	die "fatal: Unknown command: $cmd"
fi