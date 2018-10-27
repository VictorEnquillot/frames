open Make_test_v;;

testing "Tools_com_v with
    Tools_com_u_any.ml";;

(* toplevel 
   #use "Tools_com_u_any.ml";; 

*)

let nam_fil = "/keep/sources/ocaml_top/setup/frames/commonset/unitary_tests/inpu.inp";;
let fin_inp = Filename_p.filename nam_fil;; 

let rec_l = Tools_com_v.record_list_of_input_filename fin_inp;;
let wor_l = Tools_com_v.word_list_of_input_filename fin_inp;;
let str = List_v.name_bare_with_separator (fun s->s) " " wor_l;;

