sqlcmd -s localhost -e -i CreateDatabase.sql
@echo create db success

sqlcmd -s localhost -e -i CreateTables.sql
@echo create table success

sqlcmd -s localhost -e -i program.sql
@echo create programming

sqlcmd -s localhost -e -i init.sql
@echo create init success