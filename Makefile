.PHONY: image image-python-2.7 image-python-3.5

image: image-python-2.7 image-python-3.5

image-python-2.7:
	docker build -t knzm/lambda-packer:python-2.7 python-2.7

image-python-3.5:
	docker build -t knzm/lambda-packer:python-3.5 python-3.5
