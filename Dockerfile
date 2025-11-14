# Minecraft Server Dockerfile
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /minecraft

# Copy server files
COPY server.jar /minecraft/

# Copy optional config files if they exist
COPY eula.txt* /minecraft/ 2>/dev/null || true
COPY server.properties* /minecraft/ 2>/dev/null || true

# Create eula.txt if not exists (auto-accept EULA)
RUN echo "eula=true" > /minecraft/eula.txt

# Expose Minecraft port
EXPOSE 25565

# Set memory allocation (2GB)
ENV MEMORY_SIZE="2048M"

# Run the server
CMD java -Xmx${MEMORY_SIZE} -Xms${MEMORY_SIZE} -jar server.jar nogui
