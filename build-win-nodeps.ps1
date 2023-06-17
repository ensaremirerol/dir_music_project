$services = Get-ChildItem -Path services -Directory | Select-Object -ExpandProperty Name

printf "Building services:\n"

foreach ($service in $services) {
    printf "Building $service\n"
    docker build -f Dockerfilenodeps --build-arg SRC_DIR=services/$service -t services/$service .
}

printf "Building docker-compose\n"

docker-compose build --no-cache

printf "Done\n"
