(** {3 Globalset_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Globalset_interface_v";
   "Current : FGNR:Globalset_interface_v";
   "Needed-by : FGNR:Section_interface";
   "What-is-it : a Interface type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current interface";
   "What-is-it : It upgrades Interface type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_interface for_dos =
  match for_dos with
  | Globalset_interface_t.Chemicalset _ ->
      Globalset_symbol_t.Chemicalset

  | Globalset_interface_t.Generatorset _ ->
      Globalset_symbol_t.Generatorset

  | Globalset_interface_t.Figureset _ ->
      Globalset_symbol_t.Figureset

  | Globalset_interface_t.Musicset _ ->
      Globalset_symbol_t.Musicset

  (* | Globalset_interface_t.Forcefieldset _ -> *)
  (*     Globalset_symbol_t.Forcefieldset *)

  (* | Globalset_interface_t.Modelset _ -> *)
  (*     Globalset_symbol_t.Modelset *)

  (* | Globalset_interface_t.Moleculeset _ -> *)
  (*     Globalset_symbol_t.Moleculeset *)

  (* | Globalset_interface_t.Physicalset _ -> *)
  (*     Globalset_symbol_t.Physicalset *)

  (* | Globalset_interface_t.Primitiveset _ -> *)
  (*     Globalset_symbol_t.Primitiveset *)

  (* | Globalset_interface_t.Prototypeset _ -> *)
  (*     Globalset_symbol_t.Prototypeset *)

  (* | Globalset_interface_t.Simulationset _ -> *)
  (*     Globalset_symbol_t.Simulationset *)

  (* | Globalset_interface_t.Wavefunctionset _ -> *)
  (*     Globalset_symbol_t.Wavefunctionset *)

  (* | Globalset_interface_t.Wikitoolset _ -> *)
  (*     Globalset_symbol_t.Wikitoolset *)

;;

(** {6 Naming_for_interface} *)

let name for_dos = 
  let sym_dos = symbol_of_interface for_dos in
  Globalset_symbol_v.name sym_dos
;;
(* ***

let string_off for_dos =
  let sym_dos = symbol_of_interface for_dos in
  Globalset_symbol_v.string_off sym_dos
;;

let longname for_dos =
  Format.sprintf "Globalset_interface_t.%s" 
    (String.capitalize (name for_dos))

let fullname for_dos =
  Format.sprintf "%s \"%s\"" (longname for_dos) (string_off for_dos)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_dos soi_dos =
  let sym_cat_l = Globalset_interface_v.make sym_dos in
  let soi_cat_l = 
    Tools_fgnr_v.sole_index_son_list_of_symbol_son_list_of_sole_index
      sym_cat_l
      soi_dos
  in
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_category_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cat_l soi_cat_l;
  
  List.map2 Tag_v.make sym_cat_l soi_cat_l
;;

(** {6 Making_for_interface} *)

let make sym_dos soi_dos =
  let tag_cat_l = build_n_store sym_dos soi_dos in

  match sym_dos with 
  | Globalset_symbol_t.Generatorset ->
      Globalset_interface_t.Generatorset tag_cat_l

  | Globalset_symbol_t.Figureset ->
      Globalset_interface_t.Figureset tag_cat_l

  | Globalset_symbol_t.Musicset ->
      Globalset_interface_t.Musicset tag_cat_l

  | Globalset_symbol_t.Chemicalset ->
      Globalset_interface_t.Chemicalset tag_cat_l

  (* | Globalset_symbol_t.Forcefieldset -> *)
  (*     Globalset_interface_t.Forcefieldset tag_cat_l *)

  (* | Globalset_symbol_t.Modelset -> *)
  (*     Globalset_interface_t.Modelset tag_cat_l *)

  (* | Globalset_symbol_t.Moleculeset -> *)
  (*     Globalset_interface_t.Moleculeset tag_cat_l *)

  (* | Globalset_symbol_t.Physicalset -> *)
  (*     Globalset_interface_t.Physicalset tag_cat_l *)

  (* | Globalset_symbol_t.Primitiveset -> *)
  (*     Globalset_interface_t.Primitiveset tag_cat_l *)

  (* | Globalset_symbol_t.Prototypeset -> *)
  (*     Globalset_interface_t.Prototypeset tag_cat_l *)

  (* | Globalset_symbol_t.Simulationset -> *)
  (*     Globalset_interface_t.Simulationset tag_cat_l *)

  (* | Globalset_symbol_t.Wavefunctionset -> *)
  (*     Globalset_interface_t.Wavefunctionset tag_cat_l *)

  (* | Globalset_symbol_t.Wikitoolset -> *)
  (*     Globalset_interface_t.Wikitoolset tag_cat_l *)
;;

(** {6 Retrieving} *)

let retrieve tag_dos =
  let soi_dos = Tag_v.sole_index_off_tag tag_dos in
  let sym_dos = Tag_v.symbol_off_tag tag_dos in
  make sym_dos soi_dos 
;; 

(** {6 Builder_tag_listing} *)

let category_tag_list_off_mainset_interface for_dos =
  match for_dos with
  | Globalset_interface_t.Chemicalset tag_cat_l ->
      tag_cat_l

  | Globalset_interface_t.Generatorset tag_cat_l ->
      tag_cat_l

  | Globalset_interface_t.Figureset tag_cat_l ->
      tag_cat_l

  | Globalset_interface_t.Musicset tag_cat_l ->
      tag_cat_l

  (* | Globalset_interface_t.Forcefieldset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Modelset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Moleculeset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Physicalset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Primitiveset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Prototypeset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Simulationset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Wavefunctionset tag_cat_l -> *)
  (*     tag_cat_l *)

  (* | Globalset_interface_t.Wikitoolset tag_cat_l -> *)
  (*     tag_cat_l *)
;;

let category_tag_list_off_mainset_tag tag_dos =
  let for_dos = retrieve tag_dos in
  category_tag_list_off_mainset_interface for_dos
;; 

let camlline_tag_list_off_mainset_interface for_dos =
  let tag_cat_l = 
    category_tag_list_off_mainset_interface 
      for_dos 
  in
  let for_cat_l = List.map
      Category_interface_v.retrieve 
      tag_cat_l 
  in
  let tag_cal_ll = List.map
      Category_interface_v.camlline_tag_list_off_category_interface 
      for_cat_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_mainset_tag tag_dos =
  let for_dos = retrieve tag_dos in
  camlline_tag_list_off_mainset_interface for_dos
;; 

(** {6 Iterating_for_interface} *)

let map f_of_tag_cat for_dos = 
  let tag_cat_l = category_tag_list_off_mainset_interface for_dos in
  List.map f_of_tag_cat tag_cat_l
;;

let iter f_of_tag_cat for_dos = 
  let tag_cat_l = category_tag_list_off_mainset_interface for_dos in
  List.iter f_of_tag_cat tag_cat_l ;;

let map2 f_of_tag_cat for_dos_1 for_dos_2  = 
  let tag_cat_l_1 = category_tag_list_off_mainset_interface for_dos_1 in
  let tag_cat_l_2 = category_tag_list_off_mainset_interface for_dos_2 in
  List.map2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2
;;

let iter2 f_of_tag_cat for_dos_1 for_dos_2 = 
  let tag_cat_l_1 = category_tag_list_off_mainset_interface for_dos_1 in
  let tag_cat_l_2 = category_tag_list_off_mainset_interface for_dos_2 in
  List.iter2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2 
;;

