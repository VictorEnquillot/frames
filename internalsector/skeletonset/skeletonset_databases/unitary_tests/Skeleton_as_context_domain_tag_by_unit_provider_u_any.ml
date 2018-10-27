open Make_test_v;;

testing "Skeleton_as_context_domain_tag_by_unit_provider_v with
    Skeleton_as_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)


(* Debug *)

open Skeleton_as_context_domain_tag_by_unit_provider_v;;


let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__);;

let soi_dom = Global_domainset_sole_index_by_domain_name_provider_v.provide nam_dom;;

test_number 1 (
(soi_dom : int list ) = 
[19]
);;

let sym_ske_dom = Skeleton_symbol_v.skeleton_context_domain_constructor nam_dom;;

test_number 2 (
(sym_ske_dom : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
     (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
       "skeleton"))
);;

let tag_ske_dom = Tag_v.make sym_ske_dom soi_dom;;

test_number 3 (
( tag_ske_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [19])
);;

let boo = tag_ske_dom = provide ();;

test_number 4 (
boo
);;
