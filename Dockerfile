# Minecraft Server Dockerfile
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /minecraft

# Copy server files
COPY server.jar /minecraft/
COPY eula.txt /minecraft/ 
COPY server.properties /minecraft/

# Expose Minecraft port
EXPOSE 25565

# Set memory allocation (2GB)
ENV MEMORY_SIZE="2048M"

# Run the server
CMD java -Xmx${MEMORY_SIZE} -Xms${MEMORY_SIZE} -jar server.jar nogui
