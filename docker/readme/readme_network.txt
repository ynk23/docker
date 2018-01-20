##Network Adapter

NAT (Network Address Translation)
	external network --- [NIC] --- HOST OS --- [VM adapter(NAT)] --- GUEST OS
	    global <-  | -> private                        | -> sub private

	GUEST OS	 is able to connect external network (use HOST OS as NAT)
	         	 is enable to connect HOST OS
	HOST OS		 is enable to connect GUEST OS (but using port fowarding, then able to connect GUEST OS)
	external network is enable to connect GUEST OS (but using port fowarding, then able to connect GUEST OS)

Bridge
	external network --- [NIC] --- HOST OS
	                           |
	                           --- GUEST OS

	GUEST OS	 is able to connect external network (use NIC)
			 is able to connect HOST OS
	HOST OS		 is able to connect GUEST OS
	external network is able to connect GUEST OS
				
HostOnly
	HOST OS --- [VM adapter(NIC)] --- GUEST OS

	GUEST OS	 is enable to connect external network
			 is able to connect HOST OS
	HOST OS		 is able to connect GUEST OS
	external network is enable to connect GUEST OS

## Network command
ip a
	eth0 : NAT
	eth1 : HostOnly

## words

NIC	Network Interface Card
	i.e. Network card, Ethernet card, Ethernet adapter, LAN card.
