<==========================================>
## Getting Started

clone the repository

- run: npm install to install dependencies, 

- npm run create:migration <migration-table-name>

- npm run create:migration <migration-table-name> --sql-file to add the sql files

- npm run create:seed <seed-file-name>

- npm run create:seed <seed-file-name> --sql-file //to add the sql files

- npm run migrate_up runs migration

- npm run migrate_down drops all migrations

- npm run migrate:fresh drops and runs the migration

- npm run seed:up //seed data

- npm run seed:down //drop seed

- Download .env file and put it in the root folder.

- npm run dev ===> starts the dev server

- npm run start ===> for production server
<==========================================>

<==========================================>
- DOCKER
<==========================================>

- docker build -t duplo_test .

- docker compose up


<==========================================>
