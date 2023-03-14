{
    "server/frps.ini": std.manifestIni({
        sections: {
            "common": {
                bind_port: 7000,
                vhost_http_port: 8080,
            },
        }
    }),
    "client/frpc.ini": std.manifestIni({
        sections: {
            "common": {
                server_addr: "192.168.1.139",
                server_port: 7000,
            },
            "frontend-1": {
                type: "http",
                local_ip: "nginx",
                local_port: 80,
                custom_domains: "govno.kal",
            },
        },
    }),
}
