open Make_test_v;;

testing "Stereochemical_index_v";;

(* toplevel 
   #use "stereochemical_index_u_any.ml";; 
*)


let lst = ["a"; "b"; "b"; "c"; "d"];;
let bol = Booted_list_v.make lst 10.;;
let cal = Capped_list_v.make 5 lst;;
let cbl = Capped_booted_list_v.make 5 lst 10.;;

test_number 1 (
Stereochemical_index_v.sq_five
=
Stereochemical_index_t.Ordinal Ordinal_p.five
);;

test_number 2 (
Stereochemical_index_v.sequential_index_of_ordinal Ordinal_p.five
(* : Stereochemical_index_t.sequential_index *)
=
Stereochemical_index_t.Ordinal (Ordinal_p.five)
);;

test_number 3 (
Stereochemical_index_v.stereochemical_index_of_sequential_index Stereochemical_index_v.sq_five
=
Stereochemical_index_v.five
);;

test_number 4 (
Stereochemical_index_v.tail_ordinal_of_list lst
(* : Stereochemical_index_t.stereochemical_index *)
=
Ordinal_p.five
);;

test_number 5 (
Stereochemical_index_v.stereochemical_tail_index_of_list lst
(* : Stereochemical_index_t.stereochemical_index *)
=
Stereochemical_index_v.five
);;

test_number 6 (
Stereochemical_index_v.head_to_n_stereochemical_index_list_off_list ["a"]
=
[Stereochemical_index_v.head]
);;

test_number 7 (
Stereochemical_index_v.head_to_n_stereochemical_index_list_off_list ["a"; "b"]
=
[Stereochemical_index_v.head; Stereochemical_index_v.two]
);;

test_number 8 (
Stereochemical_index_v.head_to_n_stereochemical_index_list_off_list lst 
(* : Stereochemical_index_t.stereochemical_index list *)
=
[Stereochemical_index_v.head; Stereochemical_index_v.two; Stereochemical_index_v.three; Stereochemical_index_v.four; Stereochemical_index_v.five]
);;

test_number 9 (
Stereochemical_index_v.head_to_n_indexed_list_of_list lst
(* : (Stereochemical_index_t.stereochemical_index, string)
    Doublet_list_t.doublet_list *)
=
[("a", Stereochemical_index_v.head);
 ("b", Stereochemical_index_v.two);
 ("b", Stereochemical_index_v.three);
 ("c", Stereochemical_index_v.four);
 ("d", Stereochemical_index_v.five);]
);;

test_number 10 (
Stereochemical_index_v.head_to_tail_list_off_list ["a"] 
(* : Stereochemical_index_t.stereochemical_index list *)
=
[Stereochemical_index_v.tail]
);;

test_number 11 (
Stereochemical_index_v.head_to_tail_list_off_list ["a"; "b"]

=
[Stereochemical_index_v.head; Stereochemical_index_v.tail]
);;

test_number 12 (
Stereochemical_index_v.head_to_tail_indexed_list_of_list ["a"; "b"; "c"]
(* : (Stereochemical_index_t.stereochemical_index, string)
    Doublet_list_t.doublet_list *)
=
[("a", Stereochemical_index_v.head);
 ("b", Stereochemical_index_v.two);
 ("c", Stereochemical_index_v.tail)]
);;

test_number 13 (
Stereochemical_index_v.head_to_tail_list_off_list lst 
(* : Stereochemical_index_t.stereochemical_index list *)
=
[Stereochemical_index_v.head; Stereochemical_index_v.two; Stereochemical_index_v.three; Stereochemical_index_v.four; Stereochemical_index_v.tail]
);;

test_number 14 (
Stereochemical_index_v.head_to_tail_indexed_list_of_list lst 
(* : (Stereochemical_index_t.stereochemical_index, string)
    Doublet_list_t.doublet_list *)
=
[("a", Stereochemical_index_v.head);
 ("b", Stereochemical_index_v.two);
 ("b", Stereochemical_index_v.three);
 ("c", Stereochemical_index_v.four);
 ("d", Stereochemical_index_v.tail)]
);;

test_number 15 (
Stereochemical_index_v.head_to_tail_indexed_booted_list_of_booted_list bol
(* : ((string, Stereochemical_index_t.stereochemical_index) Doublet_t.doublet,
     float * Stereochemical_index_t.stereochemical_index)
    Booted_list_t.booted_list *)
=
([("a", Stereochemical_index_v.head);
  ("b", Stereochemical_index_v.two);
  ("b", Stereochemical_index_v.three);
  ("c", Stereochemical_index_v.four);
  ("d", Stereochemical_index_v.five)],
 (10., Stereochemical_index_v.tail))
);;

test_number 16 (
Stereochemical_index_v.stereochemical_index_list_of_ordinal_of_ordinal Ordinal_p.three Ordinal_p.six
=
[Stereochemical_index_v.three; Stereochemical_index_v.four; Stereochemical_index_v.five; Stereochemical_index_v.six]
);;

test_number 17 (
Stereochemical_index_v.head_to_n_stereochemical_index_list_off_list lst
(* : Stereochemical_index_t.stereochemical_index list *) 
=
[Stereochemical_index_v.head;
Stereochemical_index_v.two;
Stereochemical_index_v.three;
Stereochemical_index_v.four;
Stereochemical_index_v.five]
);;

test_number 18 (
Stereochemical_index_v.m_to_n_indexed_list_of_ordinal_of_list Ordinal_p.two lst
=
([("a", Stereochemical_index_v.two);
  ("b", Stereochemical_index_v.three);
  ("b", Stereochemical_index_v.four);
  ("c", Stereochemical_index_v.five);
  ("d", Stereochemical_index_v.six)] )
);;

test_number 19 (
Stereochemical_index_v.head_to_tail_indexed_capped_list_of_capped_list cal
=
((5, Stereochemical_index_v.head),
[("a", Stereochemical_index_v.two);
 ("b", Stereochemical_index_v.three);
 ("b", Stereochemical_index_v.four);
 ("c", Stereochemical_index_v.five);
 ("d", Stereochemical_index_v.tail)])
);;

test_number 20 (
Stereochemical_index_v.head_to_tail_indexed_booted_list_of_booted_list bol
=
([("a", Stereochemical_index_v.head);
 ("b", Stereochemical_index_v.two);
 ("b", Stereochemical_index_v.three);
 ("c", Stereochemical_index_v.four);
 ("d", Stereochemical_index_v.five)],
(10., Stereochemical_index_v.tail))
);;

test_number 21 (
Stereochemical_index_v.head_to_tail_indexed_capped_booted_list_of_list_capped_booted cbl
=
((5, Stereochemical_index_v.head),
[("a", Stereochemical_index_v.two);
 ("b", Stereochemical_index_v.three);
 ("b", Stereochemical_index_v.four);
 ("c", Stereochemical_index_v.five);
 ("d", Stereochemical_index_v.six)],
(10., Stereochemical_index_v.tail))
);;
