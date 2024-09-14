FROM steamcmd/steamcmd:debian-12 AS steamcmd
WORKDIR /satisfactory
RUN steamcmd \
    +force_install_dir ./SatisfactoryDedicatedServer \
    +login anonymous \
    +app_update 1690800 validate \
    +quit

CMD /satisfactory/FactoryServer.sh