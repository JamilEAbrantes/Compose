# Busca a imagem base do SDK da Microsoft
FROM microsoft/mssql-server-linux:2017-latest

# Cria o diretório do aplicativo
RUN mkdir -p /usr/src/app

# Atribui a pasta '/app' como diretório de trabalho
WORKDIR /usr/src/app

# Copia os scripts de inicialização do banco para a pasta '/app'
COPY InitializationDb/. /usr/src/app

# Concede permissões para que o script de inicialização seja executável
RUN chmod +x /usr/src/app/run-initialization.sh

# Define variáveis de ambiente para a criação do usuário do banco
# Nota: a senha definida neste passo deve ser a mesma contida no aquivo 'run-initialization.sh'
ENV ACCEPT_EULA Y
ENV SA_PASSWORD Jamal@123
ENV MSSQL_PID: Developer

# Expor a porta 11433 no caso de acesso de outro contêiner
EXPOSE 11433

# Executa o Microsoft SQl Server e o script de inicialização (ao mesmo tempo)
# Nota: Caso deseje iniciar apenas o MsSQL (sem script de inicialização), pode comentar a linha abaixo, a entrada CMD da imagem base será usada
CMD /bin/bash ./entrypoint.sh