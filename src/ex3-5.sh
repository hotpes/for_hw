#!/bin/sh

exe_cmd() {
    command="$1"
    shift

    $command "$@"
}


exe_cmd ls "$@"

