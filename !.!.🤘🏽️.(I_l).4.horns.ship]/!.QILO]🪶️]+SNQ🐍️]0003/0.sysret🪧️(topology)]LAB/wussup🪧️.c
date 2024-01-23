🇵🇲️
⛑️🔍️pipes vs socks = '
i think u should make "p2p/chat" soon so we can see "wussup"🔍️⛑️
🤯️if u ever do use "pipes/sockets" 
it should probably be a "single file"
(router) sitution "HUB AND SPOKE"
(But there seems 2 be other options "NETWORK TOPOLOGYS"
("BUS/ etc"_ )(how do these work ? "CA's SSL/TSL , etc..."
(doesn't this "AUGMENT THE SECURITY OF THE BLOCKCHAIN 
WHILE ALSO PROVIDING SPEED & TEMPORALITY? 

(if u did "recreate" the internet. 
its really not so bad, that makes it mobile <3 )
🤯️
🥧️im not sure that i wanna use "pipes" tho , unless
we figure they are any bettr than sockets.and we want 2 use
them for some p2p thing...
(cant u use mem location like a normal datascientist!? ;) <3 )

it may even be galaxy brain 2 use "sockets" 
for w/e ur using "system return " for or w/e ? 
(also socket COULD take the output of a pipe so itsnot
THAT srs...<but yeat getting super complex now...)

https://stackoverflow.com/questions/18568089/whats-the-difference-between-pipes-and-sockets
"
    Use sockets to send data between different IPv4 / IPv6 endpoints. Very often, this happens between different hosts, but sockets could be used within the same host

BTW, you can use netcat or socat to join a socket to a pipe.
"
Both pipes and sockets handle byte streams, but they do it in different ways...

    pipes only exist within a specific host, and they refer to buffering between virtual files, or connecting the output / input of processes within that host. There are no concepts of packets within pipes.
    sockets packetize communication using IPv4 or IPv6; that communication can extend beyond localhost. Note that different endpoints of a socket can share the same IP address; however, they must listen on different TCP / UDP ports to do so.

🥧️
🇵🇲️
🧺️
https://stackoverflow.com/questions/51489403/returning-string-from-c-system-function
🪧️
*main prog wont 'return a string" cuz it never does....
*but popen() <- can return from stdout
🪧️
🗨️
No you can't return a string from system(), and indeed a program under most modern desktop operating systems can only "return" an integer exit code when it terminates.

If you do want to get a string back from the executed program, one way would be to use popen() to invoke the program, and then have that program write the string to stdout.
🗨️
🧺️


