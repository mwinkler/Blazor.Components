#FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-stretch-slim AS base
FROM mcr.microsoft.com/dotnet/core-nightly/aspnet:3.0 AS base
WORKDIR /app
EXPOSE 80

#FROM mcr.microsoft.com/dotnet/core/sdk:3.0-stretch AS build
FROM mcr.microsoft.com/dotnet/core-nightly/sdk:3.0 AS build
WORKDIR /src
COPY ["example/ComponentsDemo/ComponentsDemo.csproj", "example/ComponentsDemo/"]
COPY ["src/PagePanelComponent/PagePanelComponent.csproj", "src/PagePanelComponent/"]
COPY ["src/TreeComponent/TreeComponent.csproj", "src/TreeComponent/"]
COPY ["src/TagSelectorComponent/TagSelectorComponent.csproj", "src/TagSelectorComponent/"]
RUN dotnet restore "example/ComponentsDemo/ComponentsDemo.csproj"
COPY . .
WORKDIR "/src/example/ComponentsDemo"
RUN dotnet build "ComponentsDemo.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "ComponentsDemo.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "ComponentsDemo.dll"]