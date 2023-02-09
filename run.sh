#! /bin/bash
docker exec -it oracle bash -c "printf \"SET SERVEROUTPUT ON \n @scripts/$1 \n exit\" | sqlplus system/admin"