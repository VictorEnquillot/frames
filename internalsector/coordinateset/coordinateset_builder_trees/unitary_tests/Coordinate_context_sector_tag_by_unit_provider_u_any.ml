open Make_test_v;;

testing "Coordinate_context_sector_tag_by_unit_provider_v with
    Coordinate_context_sector_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Coordinate_context_sector_tag_by_unit_provider_v;;

let nam_ecs = Coordinate_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_ecs : string ) = 
"internal" 
);;

let soi_ecs = Context_sole_index_by_sector_name_provider_v.provide nam_ecs;;
  
test_number 2 (
(soi_ecs : int list ) = 
[5]
);;

let sym_ncs = 
    Coordinate_context_sector_symbol_v.coordinate_context_sector_constructor 
      nam_ecs;;

test_number 3 (
( sym_ncs :
  Coordinate_context_sector_symbol_t.coordinate_context_sector_symbol ) =
  Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
   "internal"
);;
 
let tag_ncs = Tag_v.make sym_ncs soi_ecs;;

test_number 4 (
(tag_ncs :
  Coordinate_context_sector_symbol_t.coordinate_context_sector_symbol
  Tag_t.tag ) =
  (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
    "internal",
   [5])
);;

test_number 5 (
tag_ncs = provide ()
);;
