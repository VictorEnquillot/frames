open Make_test_v;;

testing "Tag_v with
   Tag_u_any.ml";;

(* toplevel 
   #use "Tag_u_any.ml";; 
 
*)

let soi = [4];;
let tag_str = Tag_v.make "sym" soi;;
let tag_int = Tag_v.make 5 soi;;
let tag_flo = Tag_v.make 4.5 soi;;

let sym = Tag_v.entity_off_tag tag_str ;;
let nam_str s = Format.sprintf "%s" s;;
let lna_str s = Format.sprintf "Some_type_t.Some_constructor";;
let sof_str s = "?";;
let fna_str s = Format.sprintf "Some_type_t.Some_constructor %s" (sof_str s);;

let nam_int i = Format.sprintf "%i" i;;

test_number 1 (
tag_str
(* : string Tag_t.tag *)
= 
("sym", [4])
);;

let str = Tag_v.name nam_str tag_str;;
test_number 2 (
str
(* : string *)
= 
"sym"
);;

let str = Tag_v.longname lna_str tag_str;;
test_number 3 (
str
(* : string *)
= 
"Some_type_t.Some_constructor Tag_t.tag"
);;

let str = Tag_v.fullname fna_str tag_str;;

test_number 4 (
(str : string ) = 
"(Some_type_t.Some_constructor ?, [4])"
);;

test_number 5 (
Tag_v.entity_off_tag tag_str 
(* : string *)
= 
"sym"
);;

test_number 6 (
Tag_v.sole_index_off_tag tag_str 
(* : Sole_index_t.sole_index *)
= 
[4]
);;

test_number 7 (
Tag_v.map (fun s -> s ^ "_") (List.map (fun i -> 2 * i)) tag_str
=
("sym_", [8])
);;

test_number 8 (
Tag_v.map_entity (fun s -> s ^ "_") tag_str
=
("sym_", [4])
);;

test_number 9 (
Tag_v.map_sole_index (List.map (fun i -> 2 * i)) tag_str
=
("sym", [8])
);;

test_number 10 (
Tag_v.tag_of_sole_index_of_int_of_entity [1; 2; 1] 2 "this"
=
("this", [2; 1; 2; 1])
);;

test_number 11 (
Tag_v.head_index_off_tag ("this", [2; 1; 2; 1])
(* : int *)
=
2
);;

test_number 12 (
Tag_v.make_son_list ["a"; "b"; "c"] [2; 1]
(* : string Tag_t.tag list *)
=
[("a", [1; 2; 1]); ("b", [2; 2; 1]); ("c", [3; 2; 1])]
);;

test_number 13 (
Tag_v.upgrade (fun s -> s ^"_") ("a", [1; 2; 1])
(* : string Tag_t.tag *)
=
("a_", [1; 2; 1])
);;

test_number 14 (
Tag_v.entity_off_tag tag_flo 
=
4.5
);;

let for_tsr = Doublet_v.make tag_str tag_int;;
let name for_tsr =
  let nam_s = Tag_v.name nam_str in
  let nam_i = Tag_v.name nam_int in
  Doublet_v.name nam_s nam_i for_tsr
;;

let str = name for_tsr;;

test_number 15 (
(str : string ) =
"(sym, 5)"
);;

type basic_type_tag = Basic_type_t.basic_type Tag_t.tag;;


