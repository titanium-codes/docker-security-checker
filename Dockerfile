FROM composer

RUN composer global require -a --prefer-stable sensiolabs/security-checker
RUN printf "#!/usr/bin/env bash\nexec $COMPOSER_HOME/vendor/bin/security-checker \$@" > /docker-entrypoint.sh
WORKDIR /app
