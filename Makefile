.PHONY: docker dist release

dist:
	gradle installDist

docker: dist
	docker build . -t synesthesiam/jsgf-gen:1.0

release: dist
	tar -C build/install -czf jsgf-gen.tar.gz jsgf-gen/
