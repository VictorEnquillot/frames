(** {3 Domainhere_this_container_v} *)

(** {6 Documenting_for_container_v} *)

let documentation () = 
  [
   "Current : FFIG:Domainhere_this_container_v";
   "Needs : DFIG:Domainhere_any_category_by_sole_index_extractor_v";
   "Needs : DXXX:Domainex_database_tag_by_database_name_provider_v";
   "Needs : DXXX:Domainex_tag_all_list_by_domainex_database_tag_provider_v";
   "Needed-by : ";
   "What-is-it : a Tuplehere of Content_tag ";
   "How-is-it-done : from B-Tree";
 ]
;;

(** {6 Naming} *)

let name con_ttt =
  Tuplehere_v.name 
    Content_tag_v.name
    con_ttt
;;

(** {6 String_offing} *)

let string_off con_ttt =
  Tuplehere_v.name 
    Content_tag_v.string_off
    con_ttt
;;

(** {6 Longnaming} *)

let longname con_ttt =
  Tuplehere_v.name 
    Content_tag_v.longname
    con_ttt
;;

(** {6 Fullnaming} *)

let fullname con_ttt =
  Tuplehere_v.name 
    Content_tag_v.fullname
    con_ttt
;;

(** {6 Building} *)

let build tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let nam_dba =
    Domainhere_any_category_by_sole_index_extractor_v.domainhere_database_string_off_off_sole_index 
      soi_ttt
  in
  let tag_edb =
    Domainex_database_tag_by_database_name_provider_v.provide 
      nam_dba
  in
  let tag_xxx_l = 
    Domainex_tag_all_list_by_domainex_database_tag_provider_v.provide
      tag_edb
  in
  let sof_ttt = Domainhere_this_tag_v.string_off tag_ttt in
  let tag_xxx_ctu_l = List.filter (fun t -> 
    Domainex_symbol_v.is_sonex_symbol_off_domainex_symbol
      (Tag_v.entity_off_tag t) )
      tag_xxx_l
  in

  let tag_xxx_ctu = List_v.only_element_of_predicate_of_list 
      (fun t -> Domainex_tag_v.string_off t = sof_ttt) 
      tag_xxx_ctu_l 
  in

  let tag_ctu = Tag_v.map_entity (* Coerce Down *)
      Domainex_symbol_v.sonex_symbol_off_domainex_symbol
      tag_xxx_ctu
  in

  Tuplehere_v.make tag_sss
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  build tag_ttt
;;

(** {6 Builder_tag_tuple_off_container} *)

let coordinate_tag_tuple_off_domainhere_this_container con_ttt =
  con_ttt
;;

let coordinate_tag_tuple_off_domainhere_this_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  coordinate_tag_tuple_off_domainhere_this_container con_ttt
;;

