
echo "Starting MSSQL Container..."
sh mssql-start.sh

echo "Sleep 10 Second"
sleep 10

echo "Starting Python Container..."
sh python-start.sh

