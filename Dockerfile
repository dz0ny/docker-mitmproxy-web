from ubuntu:14.04

run apt-get update -yq
run apt-get build-dep mitmproxy -yq  --force-yes
run apt-get install python-pip
run pip2 install mitmproxy
expose 8888
exec tmux new-s -s gotty
exec mitmproxy -p8888
exec gotty tmux a -r -s
