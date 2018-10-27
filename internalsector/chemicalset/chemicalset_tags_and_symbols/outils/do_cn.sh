#!/bin/bash
#set -x

. ${UTI}/do_header.sh

cl=`entity_without_constructor_set_name $1`
echo "entity for >$1< name >$cl<"

exit


