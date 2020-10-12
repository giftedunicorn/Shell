# ss config
ss_config_standalone(){
	cat > ${SHADOWSOCKS_CONFIG}<<-EOF
	{
	    "server":${server_value},
	    "server_port":${shadowsocksport},
	    "password":"${shadowsockspwd}",
	    "timeout":300,
	    "user":"nobody",
	    "method":"${shadowsockscipher}",
	    "nameserver":"223.5.5.5,114.114.114.114,119.29.29.29",
	    "mode":"tcp_and_udp",
	    "nofile": 51200
	}
	EOF
}