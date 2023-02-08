#!/bin/bash

pgrep -x phpbb
# if not found - equals to 1, start it
if [ $? -eq 1 ]
then
    ./phpbb run --config ./bridge.json 2>null 1>null
else
    echo "Is running" > isrunning.txt
fi
