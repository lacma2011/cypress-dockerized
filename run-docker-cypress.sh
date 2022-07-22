xhost +"local:docker@"
UID_="$(id -u)" GID_="$(id -g)" GID_CYPRESS="$(getent group docker | cut -d: -f3)" docker-compose -f "docker-compose-cypress.yml" up
