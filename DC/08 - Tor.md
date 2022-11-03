# The Onion Router protocol

- uses layers of encryption
- no router knows source and destination
- tor circuit is the connection from A to B passing the nodes

## Tor uses SOCK proxy
- socks encapsulate TCP connections
- socks support udp but tor does not

- bittorrent over tor is a no go
	- bittorrent uses only udp, not supported by tor
	- tor is slow

## Tor Browser
- normal web browser with tor is bad
	- use tor web browser
	- removes trackers, identifiers and fingerprinting
	- is a hardened version of firefox

## Onion services (darknet)

