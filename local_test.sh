#!/bin/bash

function usage() {
cat << EOF
Usage:
    $(basename ${0}) [command]

Command:
   up     launch localtest docker container
   down   terminate localtets docker container
   help   printe this message
EOF
}

if [ $# -lt 1 ]
then
    echo "Missing command"
    usage
    exit -1
fi

case ${1} in
    up)
        docker-compose up -d
        ;;
    down)
        docker-compose down
        ;;
    help)
        usage
        ;;
    *)
        echo "Invalid command"
        usage
        ;;
esac
