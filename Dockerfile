FROM 239700674053.dkr.ecr.ap-south-1.amazonaws.com/stable-saas-v1-common:alpine-3.16.2

RUN apk --no-cache --update add \
    bash \
    curl \
    git \
    jq \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
