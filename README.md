# How to use
- run the database with `docker compose up --build -d`
- add the plsql scripts you would like to run in the `/scripts/` folder. refer `print.sql` file in the folder for reference.
- start the plsql shell with `docker exec  -u root -i oracle bash -c "cd scripts && sqlplus system/admin"`
- you will have access to all files in the `/scripts` directory. try running `@print.sql`
- exit plsql shell with `exit`
- once you are done, run `docker compose down` to stop the database


-  (optional) Additioanlly, For linux users, to execute a single .sql script :
    - execute the script with `./run.sh <fileName>`
    - example: `./run.sh print.sql`


## To delete the db data, and clear space
- run `docker compose down --volumes`

## To delete the oracle docker image and delete the dbData
- run `docker compose down --volumes --rmi all`
- note: you will have to re-download oracle image if you delete the image