FROM php:7.4-cli

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
RUN mv phpcs.phar /usr/local/bin/phpcs
RUN chmod +x /usr/local/bin/phpcs

ENTRYPOINT ["phpcs"]
CMD []
