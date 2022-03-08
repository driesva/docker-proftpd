.PHONY: docker-proftpd

docker-proftpd:
	docker build --no-cache -t driesva/proftpd:1.3.7a .
