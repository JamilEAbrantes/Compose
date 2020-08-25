# Busca a imagem base do SDK da Microsoft
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copia o arquivo csproj e restaurar qualquer dependencia (via Nuget)
#COPY *.csproj ./
#RUN dotnet restore

# Copia os arquivo 'csproj' de cada projeto
COPY Compose.App/Compose.App.csproj Compose.App/
COPY Compose.Data/Compose.Data.csproj Compose.Data/
COPY Compose.Domain/Compose.Domain.csproj Compose.Domain/

#restaura qualquer dependencia (via Nuget)
RUN dotnet restore ./Compose.App/Compose.App.csproj

# Copia os arquivos do projeto e 'build' tudo usando a configuração de Release
COPY . ./
RUN dotnet publish ./Compose.App -c Release -o out

# Geração da imagem em RUNTIME
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
EXPOSE 80
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Compose.App.dll"]