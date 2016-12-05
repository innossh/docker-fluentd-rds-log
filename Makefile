test_handling_error:
	# Stop mysql container while fluentd is connecting to it
	./test_handling_error.sh
	docker-compose logs fluentd

init: init_containers

init_containers:
	docker-compose up --force-recreate --build -d
	sleep 20

clean:
	docker-compose stop
	docker-compose rm -f
