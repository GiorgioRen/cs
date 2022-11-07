- File distribution system
- Alternative to http or ftp
- File search is not a feature

# Architecture

- `.torrent` file contains metadata about the file to download
	- name
	- size
	- hashing information
	- URL of a tracker (or not in case of DHT since 2005)

- **tracker**: machine that helps node discover each other
- **seed**: a node with a full copy of the file, just uploading
- **downloaders**: nodes that have not finished downloading the file
	- downloaders that complete the download can stay in the network becoming seeders

## Pieces

- files are splitted in pieces (default 256KB)
- hashes of each piece are kept in the `.torrent` file
- a node doesn't report having a piece until it verifies the hash
- nodes contact each others, asking which pieces they have

> 256KB to keep `.torrent` file small and for faster download speeds (multiple node connections in parallel)

## Piece selection

- rarest pieces first! 
	- most difficult to find and one you have it you can upload it to others (better redundancy!)
	- guarantees that copies will stay around
- random first piece to get started

## Incentives to cooperation

- based on the principal of tit for tat (be nice and others will be nice with you)
- most of the open uploads are choked (uploaders not sending data)
- every 30 sec choose a random node and upload a lot to it
- if the node is nice they will upload a lot and the network will flourish
- if not, choose another node


