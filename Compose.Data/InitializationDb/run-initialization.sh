# Aguarde para ter certeza de que o SQL Server subiu
sleep 90s

# Execute o script de instala��o para criar o banco de dados e o esquema no banco de dados
# Nota: verifique se sua senha corresponde ao que est� no arquivo Dockerfile
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Jamal@123 -d master -i init.sql