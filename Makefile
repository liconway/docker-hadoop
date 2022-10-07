DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
USER = liconway
build:
	docker build -t $(USER)/hadoop-base ./base
	docker build -t $(USER)/hadoop-namenode ./namenode
	docker build -t $(USER)/hadoop-datanode ./datanode
	docker build -t $(USER)/hadoop-resourcemanager ./resourcemanager
	docker build -t $(USER)/hadoop-nodemanager ./nodemanager
	docker build -t $(USER)/hadoop-historyserver ./historyserver
