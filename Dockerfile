FROM caddy:2-alpine
COPY index.html three.min.js /srv/
EXPOSE 8080
CMD caddy file-server --root /srv --listen :${PORT:-8080}
