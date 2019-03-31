lib_sss.o: lib_sss.c lib_sss.h
	gcc -g -c -fPIC -o lib_sss.o -masm=intel lib_sss.c
	gcc -shared -o lib_sss.so lib_sss.o
	ar cr lib_sss.a lib_sss.o
	
test.o: test.c
	gcc -g -c -o test.o test.c

test: lib_sss.o test.o
	gcc -g -o test lib_sss.o test.o
	./test
	
doc: Doxyfile lib_sss.h lib_sss.c
	rm -rf doc
	doxygen
	firefox doc/html/index.html

py_sss.o: py_sss.c lib_sss.o
	gcc -g -c -o py_sss.o -I/usr/include/python3.5 py_sss.c

clean:
	rm *.o || true
	
demo: demo.c lib_sss.o
	gcc -g -c -o demo.o demo.c
	gcc -g -o demo demo.o lib_sss.o
	
	