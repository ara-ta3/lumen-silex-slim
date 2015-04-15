PHP=$(shell which php)

init:
	${PHP} -r "readfile('https://getcomposer.org/installer');" | ${PHP}

install:
	make install -C lumen
	make install -C silex
	make install -C slim
