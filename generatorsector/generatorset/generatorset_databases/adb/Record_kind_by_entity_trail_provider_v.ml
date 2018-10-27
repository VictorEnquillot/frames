(** {3 Provides the Record type for each Entity_trail}  *)

let nam_cod = "Record_kind_by_entity_trail_provider_v.ml";;

(**
Needs : Database_filename_by_category_trail_provider_v
Needs : Database_record_list_by_category_trail_provider_v

*)

(** {6 Registering} *)

let nam_reg = "record_kind_by_entity_trail_register";;

let record_kind_by_entity_trail_register : 
    (Trail_t.trail, string) 
    Register_t.register = Register_v.make 137
;;

let store tra_ent kin_rcd =
  try Register_v.store 
      record_kind_by_entity_trail_register tra_ent kin_rcd
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_ent =
  Register_v.is_stored 
    record_kind_by_entity_trail_register tra_ent
;;

(** {6 Retrieving} *)

let retrieve tra_ent =
  try Register_v.retrieve record_kind_by_entity_trail_register tra_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^"::retrieve")
;;  

let word_n_word_off_record rcd =

(* Ex.:
type coordinate_spherical = spherical_rho spherical_phi psi 
type_private  some_entity = ....
description spherical_rho  = distance to origin

< record_kind entity_name> = <        constructor list        >
<--------- rcd_hd -------> = <----------- rcd_tl ------------->

*)

  let rcd_hd = String_v.head_of_string_of_char rcd '=' in
  try String_v.first_word_doublet_off_string rcd_hd
  with 
  | Failure s ->
      Error_messages_v.print_fatal_error nam_cod 
	"word_n_word_off_record"
	"a valid record with two words before = sign"
	(Format.sprintf "error message >%s< for record :@.    %s" s rcd)
	"Check domainset_code file"
 ;;

let exclude_comment_n_blank rcd =
  (String_v.first_character_of_string rcd = "#")
||
  (String_v.is_empty_of_string rcd)
;;

let store_all tra_cat =
  let rcd_l = 
    Database_record_list_by_category_trail_provider_v.provide tra_cat 
  in
  let str_l = List.filter exclude_comment_n_blank rcd_l in
  let wor_n_wor_l = List.map word_n_word_off_record str_l in
  let tra_ent_n_kin_rcd_l = 
    List.map 
      (fun (k, e) -> (Trail_v.make "entity" e tra_cat, k) )
      wor_n_wor_l 
  in
  List.iter (fun (t, k) -> store t k) tra_ent_n_kin_rcd_l
;;

let build tra_ent =
  if Register_v.is_stored 
      record_kind_by_entity_trail_register 
      tra_ent
  then retrieve tra_ent
  else
    let str_reg = 
      Register_v.string_of_register 
        Trail_v.name Utilities_v.identity "\n" 
        record_kind_by_entity_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail tra_ent "entity" in
    let tra_cat = Trail_v.upper_trail_off_trail tra_ent in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "build"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_ent)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;

let provide tra_ent =
  if Register_v.is_stored 
      record_kind_by_entity_trail_register 
      tra_ent
  then retrieve tra_ent
  else 
    begin
      let tra_cat = Trail_v.upper_trail_off_trail tra_ent in
      store_all tra_cat;
      build tra_ent
    end
;;
