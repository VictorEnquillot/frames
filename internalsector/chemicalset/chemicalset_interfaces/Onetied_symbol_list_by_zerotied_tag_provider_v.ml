(** {3 Onetied_symbol_list_by_zerotied_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs :";
   "Current : DFIG:Onetied_symbol_list_by_zerotied_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Domain it provides the content of a float file as a key list";
   "Improve : Information should be read from specific Float : GNR:generatorset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Preparing} *)

let onetied_symbol_list_of_zerotied_key key_tri =
  let key_ver_l = Vertex_key_list_by_zerotied_key_provider_v.provide key_tri in  
  let nam_ver_l = List.map Key_v.string_off key_ver_l in
  List.map Tools_ifig_v.onetied_symbol_of_vertex_name nam_ver_l
;;

(** {6 Building} *)

let build tag_tri =
  let key_tri = Tools_ifig_v.zerotied_key_of_zerotied_tag tag_tri in
  onetied_symbol_list_of_zerotied_key key_tri
;;

let build_n_store tag_tri =
  let sym_poi_l = build tag_tri in
  Onetied_symbol_list_by_zerotied_tag_register_v.store tag_tri sym_poi_l; 
  sym_poi_l 
;;

let provide tag_tri =
  if Onetied_symbol_list_by_zerotied_tag_register_v.is_stored tag_tri 
  then Onetied_symbol_list_by_zerotied_tag_register_v.retrieve tag_tri
  else build_n_store tag_tri 
;;
