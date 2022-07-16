docker stop mssql || true
docker rm mssql || true

docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=MyPass@word" \
    -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" \
    -p 1433:1433 -d --name=mssql mcr.microsoft.com/azure-sql-edge