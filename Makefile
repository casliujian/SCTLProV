linux: bdd.ml term.ml formula.ml modul.ml prover.ml prover_bdd.ml prover_output.ml lexer.mll parser.mly main.ml
	ocamllex lexer.mll       
	ocamlyacc parser.mly 
	ocamlfind opt -thread -o sctl -package cudd -package yojson -linkpkg -g threads.cmxa bdd.ml term.ml formula.ml modul.ml prover.ml prover_bdd.ml prover_output.ml communicate.ml prover_visualization.ml parser.mli parser.ml lexer.ml main.ml

win: bdd.ml term.ml formula.ml modul.ml prover.ml prover_bdd.ml prover_output.ml lexer.mll parser.mly main.ml
	ocamllex lexer.mll       
	ocamlyacc parser.mly 
	ocamlfind ocamlopt -o sctl.exe -package cudd yojson -linkpkg -g bdd.ml term.ml formula.ml modul.ml prover.ml prover_bdd.ml prover_output.ml communicate.ml prover_visualization.ml parser.mli parser.ml lexer.ml main.ml

clean:
	rm -f *.cm[ioax]
	rm -f *.o
	rm -f *.a
	rm -f lexer.ml parser.mli parser.ml
	rm -f *.annot
	rm -f *.bak
	rm -f sctl
	rm -f sctl.exe

