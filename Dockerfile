FROM sameersbn/squid:latest

# Copy config and TLS cert
COPY squid.conf /etc/squid/squid.conf
COPY squid.pem /etc/squid/squid.pem

# Set permissions (Squid runs as user `proxy`)
RUN chown proxy:proxy /etc/squid/squid.pem && \
    chmod 600 /etc/squid/squid.pem

EXPOSE 3128

