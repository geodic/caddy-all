FROM caddy:builder AS builder

ARG XCADDY_ARGS
RUN xcaddy build ${XCADDY_ARGS}

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy