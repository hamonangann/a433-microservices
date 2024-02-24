# Membuat Docker image dengan nama item-app dan memiliki tag v1. Dockerfile di current dir.
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker image ls

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/hamonangann/item-app:v1

# Login ke Github Packages
cat ../.gh-pass.txt | docker login ghcr.io --username hamonangann --password-stdin

# Upload image ke Github Hub
docker push ghcr.io/hamonangann/item-app:v1