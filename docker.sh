docker rm -f caravel
docker run --detach --name caravel \
    --env SECRET_KEY=$CARAVEL_SUPERSECRET_KEY \
    --env SQLALCHEMY_DATABASE_URI=$CARAVEL_URL\
    --publish 8088:8088 \
    amancevice/caravel

docker exec caravel caravel db upgrade

# Create default roles and permissions
docker exec caravel caravel init
    
