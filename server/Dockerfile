FROM alpine:3 AS build
ENV FRP_VERSION=0.48.0
WORKDIR /build
ADD https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz /tmp/frp.tar.gz
RUN tar --strip 1 -xvzf /tmp/frp.tar.gz -C /build

FROM alpine:3
WORKDIR /frp
COPY --from=build /build/frps .
COPY frps.ini .
ENTRYPOINT ["./frps", "-c", "./frps.ini"]
