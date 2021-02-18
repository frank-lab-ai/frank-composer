param ([switch]$rebuild = $false)

if ($rebuild) {
    docker build -t frank-base-envs -f ..\franky\setup\docker\environments.dockerfile ..\franky\
}

docker-compose up --build -d