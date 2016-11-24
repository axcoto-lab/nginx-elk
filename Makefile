.PHONY: run build

run:
	docker run --name elk -it -v `pwd`:/elk  ubuntu:xenial /bin/bash -l

start:
	docker start elk

vendor:
	docker exec elk /bin/bash -c "cd /elk; berks vendor cookbooks"

chef_local:
	docker exec elk /bin/bash -c "cd /elk;  chef-client --local-mode  -o 'recipe[elk::elasticsearch]'"

build: vendor chef_local
