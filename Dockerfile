FROM php:8.0.0-cli-alpine

ARG BUILD_DATE
ARG VCS_REF

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH="/root/.composer/vendor/bin:${PATH}"

LABEL Maintainer="Zaher Ghaibeh <z@zah.me>" \
      Description="Lightweight php 7.3 container based on alpine with xDebug enabled & composer installed." \
      org.label-schema.name="zaherg/ci-deployer" \
      org.label-schema.description="Lightweight php php 7.3 container based on alpine with xDebug enabled & composer installed." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/linuxjuggler/ci-deployer.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

RUN set -ex \
  	&& apk update \
    && apk add --no-cache tini git curl openssh-client libzip libsodium \
    && apk add --no-cache --virtual build-dependencies icu-dev g++ make autoconf libsodium-dev libzip-dev \
    && docker-php-source extract \
    && pecl install libsodium \
    && docker-php-ext-enable sodium \
    && docker-php-source delete \
    && docker-php-ext-install -j$(nproc) zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo \
    && composer global require deployer/deployer \
    && cd  / && rm -fr /src \
    && apk del build-dependencies \
    && rm -rf /tmp/* \
    && composer clearcache

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["dep"]
