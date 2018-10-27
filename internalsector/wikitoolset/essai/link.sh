ocamlc -warn-error A -g -I ./ \
-o run.byt \
unix.cma -cclib -lunix str.cma -cclib -lstr \
essai.cma 