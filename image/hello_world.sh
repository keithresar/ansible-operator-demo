#!/bin/bash

exit_script() {
    echo "Terminating"
    trap - SIGINT SIGTERM # clear the trap
}

trap exit_script SIGINT SIGTERM

echo "Hello world executing"
env

while true; do
	sleep 1
done

