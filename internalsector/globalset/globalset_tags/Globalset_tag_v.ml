(** {3 The Functionalities for a Tag for an Globalset}  *)

let nam_cod = "globalset_tag_off_any_tag_v.ml";;

(** {6 Making} *)

let make sym_dos soi_dos =
  Tag_v.make sym_dos soi_dos
;;

(** {6 Naming} *)

let name tag_dos =
  let sym_dos = Tag_v.symbol_off_tag tag_dos in
  Globalset_symbol_v.name sym_dos
;;

(** {6 Extracting} *)

let globalset_tag_off_any_tag tag_any =
  let soi_any = Tag_v.sole_index_off_tag tag_any in
  let soi_dos = [List_v.last_element_off_list soi_any] in
  let dss_dos = Globalset_symbol_by_sole_index_provider_v.provide soi_dos in
  Tag_v.make dss_dos soi_dos
;;

let globalset_name_off_any_tag tag_any =
  let tag_dos = globalset_tag_off_any_tag tag_any in
  name tag_dos
;;

(** {6 Querying} *)

let is_chemicalset_off_globalset_tag tag_dos =
  let sym_dos = Tag_v.symbol_off_tag tag_dos in
  Globalset_symbol_v.is_chemicalset_symbol_off_globalset_symbol sym_dos
;;

let is_figureset_off_globalset_tag tag_dos =
  let sym_dos = Tag_v.symbol_off_tag tag_dos in
  Globalset_symbol_v.is_figureset_symbol_off_globalset_symbol sym_dos
;;

(** {6 Extracting_along_path} *)

let upwards_sole_index_of_globalset_symbol_predicate_off_current_tag pre_dss tag_cur =
  let nam_fun = "sole_index_selected_of_predicate_off_current_tag" in

  let soi_cur = Tag_v.sole_index_off_tag tag_cur in
  let soi_upw_l = List_v.list_list_off_list soi_cur in
  try 
    List.find (fun s -> pre_dss (Globalset_symbol_by_sole_index_provider_v.provide s)) soi_upw_l 
    with Not_found ->
      let dss_l = List.map Globalset_symbol_by_sole_index_provider_v.provide soi_upw_l in
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	(Format.sprintf "Current Sole_index %s@.    were including at least one element whose associated Globalset_symbol satisfies predicate"
	   (Sole_index_v.name soi_cur) 
	)
	(Format.sprintf "Associated Globalset_symbol list is:@.    %s" 
	   (List_v.name_with_separator Globalset_symbol_v.longname ";\n  " dss_l)
	)
	"Check tag" 
;;

let upwards_globalset_tag_of_globalset_symbol_predicate_off_current_tag pre_dss tag_cur =
  let soi_upw = upwards_sole_index_of_globalset_symbol_predicate_off_current_tag pre_dss tag_cur in
  let dss_upw = Globalset_symbol_by_sole_index_provider_v.provide soi_upw in
  Tag_v.make dss_upw soi_upw
;;

