# FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
# FROM bastion.bensonocp.lab:5000/aspnet:2.2 AS runtime
FROM docker-registry-default.apps.bensonocp.lab/vscodeweb/aspnet:2.2 AS runtime
USER root
RUN mkdir /vscode
WORKDIR /vscode/
EXPOSE 5001
ADD . /vscode/
CMD ["dotnet", "HelloWorld.dll"]