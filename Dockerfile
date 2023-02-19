FROM alpine:3.17.2

COPY ./requirements.txt ./requirements.txt

RUN apk add --no-cache \
    python3~=3.10.10 \
    py3-pip~=22.3.1 \
  && apk add --no-cache --virtual .build-deps \
    gcc~=12.2.1 \
    libffi-dev~=3.4.4 \
    musl-dev~=1.2.3 \
    openssl-dev~=3.0.8 \
    python3-dev~=3.10.10 \
    rust~=1.64.0 \
  && pip install --no-cache-dir -r requirements.txt \
  && apk del .build-deps

RUN addgroup --gid 1000 app \
  && adduser \
    --uid 1000 \
    --home /home/app \
    --shell /bin/ash \
    --ingroup app \
    --disabled-password \
    app

COPY ./ /home/app

WORKDIR /home/app

USER app

EXPOSE 8080

ENTRYPOINT ["/usr/bin/python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000", "--noreload"]
