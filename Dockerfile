FROM python:3.14.0a3-alpine3.20
WORKDIR /chkdns
COPY dist/ /chkdns/
RUN pip install --no-cache-dir chkdns*.whl \
    && rm ./*
ENTRYPOINT ["chkdns"]
