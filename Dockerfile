FROM nextcloud

ARG UID
ARG GID

RUN usermod -u $UID www-data; \
	groupmod -g $GID www-data
