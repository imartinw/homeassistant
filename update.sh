#/bin/bash

docker-compose pull home-assistant
docker-compose stop home-assistant
docker-compose rm -f home-assistant
docker-compose up --no-start home-assistant
docker-compose start home-assistant

# end of file
