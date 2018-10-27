(** {3 Db1figure_float_tag_by_elementary_fence_units_tag_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Db1figure_float_tag_by_elementary_fence_units_tag_translator_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needs : DELE:Db1figure_as_element_vertex_tag_by_elementary_body_coordinate_tuple_tag_translator_v";
   "Needs : DELE:Db1figure_tag_float_closure_by_db1figure_tag_provider_v";
   "Needed-by :"; 
   "How-is-it-done : tag_ele_ctu <-|extractor | soi_eun <- tag_eun ";
   "How-is-it-done : tag_eun_clo <-|provider  | tag_ele_ctu";
   "How-is-it-done : tag_dd1_ver <-|translator| tag_ele_ctu";
   "How-is-it-done : tag_d1f_clo <-|provider  | tag_dd1_ver";
   "How-is-it-done : tag_d1f_clo <-|mapping   |-> tag_eun_clo";
  ]
;;

let units_tag_closure_of_units_sole_index soi_eun =
  let tag_ctu =
    Elementary_any_category_by_sole_index_extractor_v.elementary_body_coordinate_tuple_tag_off_sole_index 
      soi_eun
  in
  let tag_ele_ctu = Tag_v.map_entity (* Coerce Up *)
      Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_symbol
      tag_ctu
  in
  let tag_ele_l = Elementary_fence_by_elementary_tag_provider_v.provide tag_ele_ctu in
  List.map (* Coerce Down *)
    Elementary_fence_units_tag_v.elementary_fence_units_tag_off_elementary_tag
    tag_ele_l
;;

let float_tag_closure_of_units_sole_index soi_eun =
  let tag_ctu =
    Elementary_any_category_by_sole_index_extractor_v.elementary_body_coordinate_tuple_tag_off_sole_index 
      soi_eun
  in
  Db1figure_float_tag_closure_by_elementary_body_coordinate_tuple_tag_translator_v.translate tag_ctu
;;

let translate_without_trace tag_eun =
  let soi_eun = Tag_v.sole_index_off_tag tag_eun in
  let tag_flo_clo = float_tag_closure_of_units_sole_index soi_eun in
  let tag_eun_clo = units_tag_closure_of_units_sole_index soi_eun in

  if List.length tag_eun_clo = List.length tag_flo_clo 
  then
    begin
      let idx_eun = try List_v.index_of_element_of_list tag_eun tag_eun_clo 
      with Failure "Not_found:List_v.index_of_element_of_list" ->
      let nam_fun = "translate_without_trace" in
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun 
	(Format.sprintf "Elementary_fence_units_tag %s were an element of Elementary_fence_units_tag_closure"
	   (Elementary_fence_units_tag_v.fullname tag_eun)
	)
	(Format.sprintf "Units closure:@.    %s"
	   (List_v.name Elementary_fence_units_tag_v.fullname tag_eun_clo)	
	) 
	"Check"

      in
      List.nth tag_flo_clo idx_eun
    end
  else
    begin
      let nam_fun = "translate_without_trace" in
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun 
	"Units closure had same length as Float closure"
	(Format.sprintf "Units closure:@.    %s@.Float closure:@.    %s" 
	   (List_v.name Elementary_fence_units_tag_v.fullname tag_eun_clo)	
	   (List_v.name Db1figure_float_tag_v.fullname tag_flo_clo)
	) 
	"Check"
    end
;;

let translate_with_trace tag_eun =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace tag_eun in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate tag_eun =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace tag_eun
  else translate_without_trace tag_eun
;;

