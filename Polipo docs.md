# Polipo document

### On Mac

- first step: install polipo:
		
		brew install polipo
		
- second step: setup autorun.

- third step: configuration.

	```
	proxyAddress = "0.0.0.0"
	proxyPort = 8123
	allowedClients = 127.0.0.1, 10.0.1.0/24
	allowedPorts = 1-65535
	tunnelAllowedPorts = 1-65535
	proxyName = "localhost"
	cacheIsShared = false
	socksParentProxy = "127.0.0.1:1080"
	socksProxyType = socks5
	# chunkHighMark = 33554432
	# diskCacheRoot = ""
	# localDocumentRoot = ""
	disableLocalInterface = true
	disableConfiguration = true
	dnsUseGethostbyname = yes
	disableVia = true
	censoredHeaders = from,accept-language,x-pad,link
	censorReferer = maybe
	# maxConnectionAge = 5m
	# maxConnectionRequests = 120
	# serverMaxSlots = 8
	# serverSlots = 2
	```
	
- set terminal http proxy
	
	```
	vim ~/.bash_profile
	export http_proxy=http://127.0.0.1:8123
	export https_proxy=$http_proxy
	```
	- test: `curl http://www.google.com`

- cache 
	- /usr/local/var/cache/polipo (default on Mac)