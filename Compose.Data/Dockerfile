# Busca a imagem base do SDK da Microsoft
FROM microsoft/mssql-server-linux:2017-latest

# Cria o diret�rio do aplicativo
RUN mkdir -p /usr/src/app

# Atribui a pasta '/app' como diret�rio de trabalho
WORKDIR /usr/src/app

# Copia os scripts de inicializa��o do banco para a pasta '/app'
COPY InitializationDb/. /usr/src/app

# Concede permiss�es para que o script de inicializa��o seja execut�vel
RUN chmod +x /usr/src/app/run-initialization.sh

# Define vari�veis de ambiente para a cria��o do usu�rio do banco
# Nota: a senha definida neste passo deve ser a mesma contida no aquivo 'run-initialization.sh'
ENV ACCEPT_EULA Y
ENV SA_PASSWORD Jamal@123
ENV MSSQL_PID: Developer

# Expor a porta 11433 no caso de acesso de outro cont�iner
EXPOSE 11433

# Executa o Microsoft SQl Server e o script de inicializa��o (ao mesmo tempo)
# Nota: Caso deseje iniciar apenas o MsSQL (sem script de inicializa��o), pode comentar a linha abaixo, a entrada CMD da imagem base ser� usada
CMD /bin/bash ./entrypoint.sh