IMGNAME = mysql-schoolbox
IMGTAG = latest
NETWORK = bridge
PORT = 3306
MYSQL_ROOT_PASSWORD = password
.PHONY: all build

all: build
kill: stop delete
killall: stopall deleteall
dpush: taglatest push

build:
	@docker build -t $(IMGNAME):$(IMGTAG) .

run:
	docker run -t -d\
    --name $(IMGNAME)_run \
	--net $(NETWORK) \
	-e MYSQL_ROOT_PASSWORD=$(MYSQL_ROOT_PASSWORD) \
    -p $(PORT):$(PORT) \
	$(IMGNAME):$(IMGTAG)

start:
	@docker start $(IMGNAME)_run

stop:
	@docker stop $(IMGNAME)_run

delete:
	@docker container rm $(IMGNAME)_run

deleteall:
	@docker container rm $(shell docker ps -aq)

stopall:
	@docker stop $(shell docker ps -aq)

taglatest:
	docker tag $(IMGNAME):$(IMGTAG) schoolboxsih/$(IMGNAME):$(IMGTAG)

push:
	@docker push schoolboxsih/$(IMGNAME):$(IMGTAG)
