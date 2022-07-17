import pyodbc
server = '127.0.0.1 '
username = 'sa'
password = 'MyPass@word'

# conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';PORT=1434;UID='+username+';PWD='+ password)

conn = pyodbc.connect('DRIVER={ODBC Driver 18 for SQL Server};SERVER={172.17.0.1,1433};DATABASE=tempdb;UID=sa;PWD=MyPass@word;TrustServerCertificate=yes;')

cursor = conn.cursor()
cursor.execute("""
CREATE TABLE Test_table (id INT, name VARCHAR(50))
INSERT into Test_table VALUES (1, 'test')
SELECT * FROM Test_table;
""")