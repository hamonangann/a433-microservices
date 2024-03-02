# Membuat Docker image dengan nama karsajobs dan memiliki tag latest. Dockerfile di current dir.
docker build -t ghcr.io/hamonangann/karsajobs:latest .

# Login ke Github Packages
cat ../.gh-pass.txt | docker login ghcr.io --username hamonangann --password-stdin

# Push image ke Github Packages
docker push ghcr.io/hamonangann/karsajobs:latest