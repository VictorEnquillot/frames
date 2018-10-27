open Make_test_v;;

testing "Block_proformula_marked_v
   tblock_proformula_marked_v.ml";;

(* toplevel 
   #use "tblock_proformula_marked_v.ml";;
*)

let sym_blo = Block_symbol_v.n_coh_s;;
let tag_blo = Tag_v.make sym_blo [2; 3; 5];;
let nam_blo = Block_symbol_v.name sym_blo;;
let nam_ent_n_nam = ("block", nam_blo);;

test_number 1 (
Word_list_by_entity_name_n_name_provider_v.provide nam_ent_n_nam
(* : string list *)
= 
["c_ssd:tpl_c"; "o_d:tpl_i"; "h_s:tpl_l"]
);;

test_number 2 (
Block_proformula_marked_v.provide tag_blo
(* : Atom_mark_t.atom_mark list *)
=
[(Atom_symbol_t.Atom_core_symbol
   (Atom_core_symbol_t.Atom_threetied_symbol
     (Atom_threetied_symbol_t.Atom_threetied_singlesingledouble_symbol
       Atom_threetied_singlesingledouble_symbol_t.C_ssd)),
  Vsepr_index_t.Trigonalplanar_index Vsepr_index_t.Tpl_c);
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_onetied_symbol_t.Atom_onetied_double_symbol
     Atom_onetied_double_symbol_t.O_d),
  Vsepr_index_t.Trigonalplanar_index Vsepr_index_t.Tpl_i);
 (Atom_symbol_t.Atom_onetied_symbol
   (Atom_onetied_symbol_t.Atom_onetied_single_symbol
     Atom_onetied_single_symbol_t.H_s),
  Vsepr_index_t.Trigonalplanar_index Vsepr_index_t.Tpl_l)]
);;
