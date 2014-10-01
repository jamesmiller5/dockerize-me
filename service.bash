#!/bin/bash
#Where this script is
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LISTEN=${1:-8008}

set -e

while true
do 
	{ echo -e 'HTTP/1.1 200 OK\r\n'; date; echo "hi Eugene, I'm " `whoami`; } | nc -l "$LISTEN" > /dev/null
done
