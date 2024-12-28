FROM python:3.14.0a3-slim
WORKDIR /chkdns
COPY dist/ /chkdns/
RUN pip install --no-cache-dir chkdns*.whl \
    && rm ./*
ENTRYPOINT ["chkdns"]
