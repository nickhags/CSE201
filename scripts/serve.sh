#!/bin/bash

echo "Starting Server"
cd ../sierra

ruby bin/rails s -b 134.53.106.93 -p 8080 > /dev/null
echo "Server is running"

