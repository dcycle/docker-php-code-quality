[![CircleCI](https://circleci.com/gh/dcycle/docker-php-code-quality.svg?style=svg)](https://circleci.com/gh/dcycle/docker-php-code-quality)

PHP code quality
-----

Uses a number of PHP code quality metric checkers to provide a unified code quality report.

Meant to be used in the context of a CI server and fail if certain thresholds are attained.

This project is based on, and inspired from, [adamculp/php-code-quality](https://hub.docker.com/r/adamculp/php-code-quality), with the following changes:

* This projects is automatically rebuilt weekly to make sure we have the latest versions of each subproject.
* Instead of running each project separately, you can obtain a unified report.
* Automated tests added.

Running each command separately
-----

This codebase contains a number of tools, and they are all documented on [https://hub.docker.com/r/adamculp/php-code-quality](adamculp/php-code-quality).
