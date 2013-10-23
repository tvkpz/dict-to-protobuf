test: example_pb2.py
	pip install pytest 
	py.test --doctest-modules

build: example_pb2.py
clean:
	rm example_pb2.py

example_pb2.py:
	protoc --python_out . example.proto

shell: clean build
	python
