#FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-stretch-slim AS base
FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS base
WORKDIR /app
EXPOSE 80

#FROM mcr.microsoft.com/dotnet/core/sdk:3.0-stretch AS build
FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /src
COPY ["example/ComponentsDemo/ComponentsDemo.csproj", "example/ComponentsDemo/"]
COPY ["example/ComponentsDemoServer/ComponentsDemoServer.csproj", "example/ComponentsDemoServer/"]
COPY ["src/PagePanelComponent/PagePanelComponent.csproj", "src/PagePanelComponent/"]
COPY ["src/TreeComponent/TreeComponent.csproj", "src/TreeComponent/"]
COPY ["src/TagSelectorComponent/TagSelectorComponent.csproj", "src/TagSelectorComponent/"]
RUN dotnet restore "example/ComponentsDemoServer/ComponentsDemoServer.csproj"
COPY . .
WORKDIR "/src/example/ComponentsDemoServer"
RUN dotnet build "ComponentsDemoServer.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "ComponentsDemoServer.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "ComponentsDemoServer.dll"]