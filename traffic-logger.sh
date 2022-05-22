#!/bin/bash
start()
{

	tcpdump -i enp5s0 udp and src port 1111 and dst port 1111 -w /home/test/logs/enp5s0/traffic.pcap &
	tcpdump -i enp4s0 udp and src port 1111 and dst port 1111 -w /home/test/logs/enp4s0/traffic.pcap &
	tcpdump -i enp26s0f0 udp and src port 1111 and dst port 1111 -w /home/test/logs/enp26s0f0/traffic.pcap &
	tcpdump -i enp26s0f1 udp and src port 1111 and dst port 1111 -w /home/test/logs/enp26s0f1/traffic.pcap &
}

stop()
{
	killall tcpdump
}

case "$1" in 
	start) start ;;
	stop) stop ;;
	*) echo "use with start or stop." >&2
		exit 1
		;;
esac
