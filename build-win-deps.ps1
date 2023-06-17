$services = Get-ChildItem -Path services -Directory | Select-Object -ExpandProperty Name

printf "Building services:\n"

foreach ($service in $services) {
    printf "Building $service\n"
    mvn clean package -DskipTests -f services/$service
    docker build -f Dockerfiledeps --build-arg JAR_FILE=services/$service/target/*.jar -t services/$service .
}

printf "Building docker-compose\n"

docker-compose build --no-cache

printf "Done\n"
