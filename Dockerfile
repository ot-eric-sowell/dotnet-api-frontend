FROM microsoft/dotnet:2.0.5-sdk-2.1.4-jessie

WORKDIR /app

COPY . .
RUN dotnet publish -o out
ENTRYPOINT ["dotnet", "out/dotnet-api-frontend.dll"]

EXPOSE 5000