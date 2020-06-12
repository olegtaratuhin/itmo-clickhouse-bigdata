#!/bin/bash

echo "Drop database in progress"
./drop.sh
echo "Drop database finished"

echo "Creating new database"
./create.sh
echo "Database created"

echo "Upload data"
./upload_data.sh
echo "Finished uploading data"

echo "Creating MVs"
./upload_all_mv.sh
echo "Created all MVs"