.PHONY: run build

run:
	docker run --name elk -it -v `pwd`:/elk  ubuntu:xenial /bin/bash -l

start:
	docker start elk

vendor:
	berks vendor cookbooks

chef_local:
	chef-client --local-mode  -o 'recipe[elk::elasticsearch]'

build: vendor chef_local
