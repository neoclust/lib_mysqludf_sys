LIBDIR=/usr/lib/x86_64-linux-gnu/mariadb19/plugin

install:
	gcc -Wall -I/usr/include/mariadb/ -DHAVE_DLOPEN -DSTANDARD -c lib_mysqludf_sys.c -o lib_mysqludf_sys.o
	gcc -Wl,--no-as-needed -Wall -I/usr/include/mariadb/ -DHAVE_DLOPEN -DSTANDARD -L/usr/lib/x86_64-linux-gnu/ -lmariadb -shared -o lib_mysqludf_sys.so -fPIC lib_mysqludf_sys.o
