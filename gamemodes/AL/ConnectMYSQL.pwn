// Mysql Connectivity
new GlobalStatus = 0;

#define SQL_HOST "localhost"
#define SQL_USER "username"
#define SQL_PASS "password" //edit this once im gone and compile.
#define SQL_DB "db-name"
#define TABLENAME "users"

forward ConnectMySQL();

public ConnectMySQL()
{
	mysql_connect(SQL_HOST, SQL_USER, SQL_DB, SQL_PASS);
	if(mysql_ping() == 1)
 	{
  		mysql_debug(1);
	    printf("[MYSQL]: Connection to `%s` succesful!", SQL_DB);
	    GlobalStatus = 1;
	}
	else
	{
	    printf("[MYSQL]: [ERROR]: Connection to `%s` failed!", SQL_DB);
	    GlobalStatus = 2;
	}
	return 1;
}
