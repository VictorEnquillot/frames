(** {3 Word_word_string_triplet_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Tools_agnr_1_v";
   "Needs : AGNR:Database_filename_by_category_trail_provider_v";
   "Needs : AGNR:Database_record_list_by_category_trail_provider_v";
   "Current : AGNR:Word_word_string_triplet_list_by_category_trail_provider_v";
   "Needed-by : AGNR:Constructor_basename_tree_by_category_trail_provider_v";
   "What-is-it : A step in Database structuration"; 
   "Remark : Word is used because these data are rough data :"; 
   "Remark : entity, description and comments are mixed";
   "Remark : For a given Domain, each record of the database file"; 
   "Example : domain_categorys.dat is reorganized as a triplet :";
   "Example : ( kind : (builders|type|type_private|description), entity name, information string)"; 
   "Invariant : 1. have_valid_kind_field";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "word_word_string_triplet_list_by_category_trail_register";;

let word_word_string_triplet_list_by_category_trail_register : 
    (Trail_t.trail, 
     (string, string, string) Triplet_list_t.triplet_list) 
      Register_t.register = Register_v.make 137
;;
	
(** {6 Invariants} *)

let have_valid_kind_of_category_trail_of_word_word_string_list tra_cat wws_l =
  let nam_fun = "have_valid_kind_of_word_word_string_list" in
  
  let inv_l = List.filter 
      (fun (k, e, rhs) -> ( not (Tools_agnr_1_v.is_valid_of_kind k)) ) wws_l 
  in
  
  if inv_l <> []
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "invalid kind list were EMPTY"
      (Format.sprintf "for category key >%s<@.  invalid kind list is :@. >%s<"
         (Trail_v.name tra_cat)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    inv_l) 
      )
      "Check category dat files"
  else
    wws_l
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  let wws_l =
    try Register_v.retrieve 
	word_word_string_triplet_list_by_category_trail_register 
	tra_cat
    with Failure ("Not_stored:Register_v.ml:retrieve") ->
      failwith ("Not_stored:"^nam_cod^":retrieve")
  in
  have_valid_kind_of_category_trail_of_word_word_string_list tra_cat wws_l

;;  

let store tra_cat wws_trl =
  try Register_v.store 
      word_word_string_triplet_list_by_category_trail_register 
      tra_cat 
      wws_trl
  with Failure ("Already_stored:Register_v.ml:store") ->
    let nam_ent = Trail_v.value_of_key_off_trail "category" tra_cat in
    let nam_fil = 
      Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    
    Error_messages_v.print_fatal_error nam_cod "store"
      "already stored"
      (Format.sprintf "for category key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_cat)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    wws_trl) 
      )
      (Format.sprintf "Check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;

let is_stored tra_cat =
  Register_v.is_stored 
    word_word_string_triplet_list_by_category_trail_register 
    tra_cat
;;

let word_word_string_off_record tra_cat rcd =
  let nam_fun = "word_word_string_off_record" in

(* Ex.:
type coordinate_spherical = spherical_rho spherical_phi psi 
type_private  some_entity = ....
description spherical_rho  = distance to origin

<--------- rcd_hd -------> = <----------- rcd_tl ------------->
< record_kind entity_name> = <        constructor list        >

*)

  let rcd_hd = try String_v.head_of_string_of_char rcd '=' 
  with Failure "Not_found_char:string_v.ml:head_of_string_of_char" ->
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  "a valid record with an = sign"
	  (Format.sprintf "this record >%s<" rcd)
	  "Check domain_symbols.dat file"
  in
  let (kin_rcd, nam_ent) =
    try String_v.first_word_doublet_off_string rcd_hd
    with 
    | Failure s ->
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  "a valid record with two words before = sign"
	  (Format.sprintf "this error message >%s< for record :@.    %s" s rcd)
	  "Check domain_code file"
  in
  let str = String_v.tail_of_string_of_char rcd '=' in
  if String_v.is_empty_of_string str 
  then
    begin 
      let fin = Tools_agnr_1_v.filename_of_category_trail tra_cat in
       Error_messages_v.print_fatal_error nam_cod nam_fun
	"a string at right-hand-side of \'=\' sign"
	(Format.sprintf "empty right-hand-side of \'=\' sign in record >%s<" rcd)
	(Format.sprintf "Check file >%s<" (Filename_p.fullname fin) )
    end
  else
    let rcd_tl = 
      try String_v.reduce_blanks_to_one_blank_of_string str 
      with Failure _ ->
       Error_messages_v.print_fatal_error nam_cod nam_fun
	  "a non empty string"
	  "string is EMPTY"
	  "Check"
    in 
    (kin_rcd, nam_ent, rcd_tl)
 ;;

let build tra_cat =
  let rcd_l = 
    Database_record_list_by_category_trail_provider_v.provide tra_cat 
  in
  List.map 
    (word_word_string_off_record tra_cat) 
    rcd_l 
;;

let build_n_store tra_cat =
  let wws_trl = build tra_cat in
  store tra_cat wws_trl; 
  wws_trl
;;

let provide tra_cat =
  if tra_cat = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cat were NOT empty" "tra_cat IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "category" tra_cat) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "category trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_cat) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    word_word_string_triplet_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
