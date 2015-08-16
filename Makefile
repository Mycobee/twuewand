all: build

build:
	python setup.py build

test: build
	python setup.py test

install: build
	python setup.py install

clean:
	python setup.py clean
	$(RM) -r build MANIFEST

rndaddentropy:
	$(MAKE) -C rndaddentropy

doc:
	$(MAKE) -C doc

README: README.md
	pandoc -s -t plain -o $@ $<

