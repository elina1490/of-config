#!/bin/bash

netopeer-cli <<KONEC
connect localhost
edit-config --test=set --config=create_queue.xml running
get-config --filter=ovs.xml running
disconnect
KONEC
echo ""
exit 0
