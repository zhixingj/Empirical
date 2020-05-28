test:
	make test-native
	make test-examples
	make test-web	

test-examples:
	cd examples && make
	cd examples && make debug

test-native:
	cd tests && make test
	cd tests && make fulldebug
	cd tests && make opt
	cd examples && make native-test

test-web:
	cd tests && make test-web
	cd examples && make web-test

doc: build-doxygen-xml
	cd doc && ./make_docs.sh

coverage:
	cd tests && make test-coverage

build-doxygen-xml:
	./third-party/doxygen/build/bin/doxygen Doxyfile

install-dependencies:
	git submodule init
	git submodule update
	cd third-party && make

install-doc-dependencies:
	git submodule init
	git submodule update
	cd third-party && make install-doc-dependencies

install-test-dependencies:
	cd third-party && make install-test-dependencies

install-coverage-dependencies:
	cd third-party && make install-coverage-dependencies

clean:
	rm -rf build/*
	cd tests && make clean
clean-dep:
	cd third-party && make clean
