test_handling_error:
	# Stop mysql container while fluentd is connecting to it
	./test_handling_error.sh
	docker-compose logs fluentd | tail -20

init: init_containers wait

init_containers:
	docker-compose up --force-recreate --build -d

wait:
	sleep 60

clean:
	docker-compose stop
	docker-compose rm -f
