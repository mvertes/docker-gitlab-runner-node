IMAGE = mvertes/gitlab-runner-node

all:

image:
	docker build -t $(IMAGE) .

publish:
	docker push $(IMAGE)
