FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY global.json ./
COPY LAB14-JoseTincopaPaz/ ./LAB14-JoseTincopaPaz/
RUN dotnet publish LAB14-JoseTincopaPaz/LAB14-JoseTincopaPaz.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/publish ./
ENTRYPOINT ["dotnet", "LAB14-JoseTincopaPaz.dll"]