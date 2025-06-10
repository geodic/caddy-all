FROM caddy:2.9.1-builder AS builder

ARG XCADDY_ARGS
RUN xcaddy build ${XCADDY_ARGS}

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy