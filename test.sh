set -e
docker pull php:cli
docker pull dcycle/php-code-quality:1
docker build -t local-dcycle-php-code-quality .

docker run -v $(pwd)/example:/app/code dcycle/php-code-quality:1 --help
docker run -v $(pwd)/example:/app/code dcycle/php-code-quality:1 .
docker run -v $(pwd)/example:/app/code local-dcycle-php-code-quality-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-php-code-quality-image .
