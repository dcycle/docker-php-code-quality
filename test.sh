set -e
docker pull php:cli
docker pull dcycle/php-code-quality:1
docker build -t local-dcycle-php-code-quality .

docker run --rm -v $(pwd)/example:/app/code dcycle/php-code-quality:1 --help
docker run --rm -v $(pwd)/example:/app/code local-dcycle-php-code-quality --help

mkdir -p do-not-commit

echo "=> Confirm phploc works as expected"
docker run -it --rm -v "$PWD"/examples/example01:/app -w /app adamculp/php-code-quality:latest php /usr/local/lib/php-code-quality/vendor/bin/phploc -v . | grep "Non-Comment Lines of Code"
