#!/bin/bash
while true
do 
	{ echo -e 'HTTP/1.1 200 OK\r\n'; cat index.html; } | nc -l 8008 > /dev/null
done
