# Minecraft Server Docker

## Cara Menjalankan

1. Pastikan Docker sudah terinstall
2. Jalankan command berikut:

```bash
# Build dan run
docker-compose up -d

# Lihat logs
docker-compose logs -f

# Stop server
docker-compose down

# Restart server
docker-compose restart
```

## Cara Masuk ke Console Server

```bash
docker attach minecraft-server
```

Untuk keluar tanpa stop server: `CTRL + P, CTRL + Q`

## Konfigurasi

- Edit `docker-compose.yml` untuk mengubah memory allocation (MEMORY_SIZE)
- Edit `server.properties` untuk konfigurasi server
- Port default: 25565

## Catatan

- Data world, logs, plugins, dan config akan tersimpan di folder lokal
- Server menggunakan Java 21
