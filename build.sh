# Membuat Docker image dengan nama shipping-service dan memiliki tag latest. Dockerfile di current dir.
docker build -t ghcr.io/hamonangann/shipping-service:latest .

# Login ke Github Packages
cat ../.gh-pass.txt | docker login ghcr.io --username hamonangann --password-stdin

# Push image ke Github Packages
docker push ghcr.io/hamonangann/shipping-service:latest