# jncep_docker

Instructions:
Build image using build file, image will likely go into wherever local image host is on your docker install.  Reference that in your image pull for the docker-compose.yml file
add relevant env variables and adjust host side of volume mounts in file.
use dockercompose to deploy.

Setup cron jobs like these to have it auto-check the jnc servers for updates each hour. Change the part after "docker exec" from "jncep" to whatever you might have named the container, if you altered it.

# run jnc pre-pub update script every hour
1 */1 * * * docker exec jncep bash /config/jncep/jnc-update.sh
