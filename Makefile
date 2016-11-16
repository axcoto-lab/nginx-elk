.PHONY: run

run:
	docker run --name elk -it -v `pwd`:/elk  ubuntu:xenial /bin/bash -l
