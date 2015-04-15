PHP=$(shell which php)
conc=10
req=1000

init:
	${PHP} -r "readfile('https://getcomposer.org/installer');" | ${PHP}

install:
	make install -C lumen
	make install -C silex
	make install -C slim

bench-lumen:
	siege -c ${conc} -r ${req} 'http://localhost:8000/'

bench-silex:
	siege -c ${conc} -r ${req} 'http://localhost:8001/'

bench-slim:
	siege -c ${conc} -r ${req} 'http://localhost:8002/'

