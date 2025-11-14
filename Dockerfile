# Minecraft Server Dockerfile
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /minecraft

# Copy server files
COPY server.jar /minecraft/

# Create eula.txt (auto-accept EULA)
RUN echo "eula=true" > /minecraft/eula.txt

# Expose Minecraft port
EXPOSE 25565

# Set memory allocation (4.5GB, leaving 0.5GB for system overhead)
ENV MEMORY_SIZE="4608M"

# Run the server
CMD java -Xmx${MEMORY_SIZE} -Xms${MEMORY_SIZE} -jar server.jar nogui
