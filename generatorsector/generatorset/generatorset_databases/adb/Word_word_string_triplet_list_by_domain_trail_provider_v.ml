(** {3 Word_word_string_triplet_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Word_word_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Word_word_string_triplet_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "What-is-it : Sums up Symbols.dat and Formulas.dat information";
   "Example :";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "word_word_string_triplet_list_by_domain_trail_register";;

let word_word_string_triplet_list_by_domain_trail_register : 
    (Trail_t.trail, 
     (string, string, string) Triplet_list_t.triplet_list) 
     Register_t.register = Register_v.make 137
;;
	
(** {6 Retrieving} *)

let retrieve tra_dom =
  try Register_v.retrieve 
      word_word_string_triplet_list_by_domain_trail_register 
      tra_dom
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_dom wws_trl =
  let nam_fun = "store" in
  try Register_v.store 
      word_word_string_triplet_list_by_domain_trail_register 
      tra_dom 
      wws_trl
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "triplet string list were NOT already stored"
      (Format.sprintf "for domain key >%s<@.    already stored value >%s<"
         (Trail_v.name tra_dom)
         (Triplet_list_v.name_with_separator
	    Utilities_v.identity Utilities_v.identity Utilities_v.identity 
	    ";\n   " 
	    wws_trl) 
      )
      "Check domain .dat files"
;;

let is_stored tra_dom =
  Register_v.is_stored 
    word_word_string_triplet_list_by_domain_trail_register 
    tra_dom
;;

let build tra_dom =
  let tra_sym = Trail_v.make "category" "symbol" tra_dom in
  let sym_rcd_l = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_sym in
  let tra_for = Trail_v.make "category" "formula" tra_dom in
  let for_rcd_l = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_for in

  sym_rcd_l @ for_rcd_l
;;

let build_n_store tra_dom =
  let wws_trl = build tra_dom in
  store tra_dom wws_trl; 
  wws_trl
;;

let provide tra_dom =
  if tra_dom = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dom were NOT empty" "tra_dom IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dom) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "domain trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_dom) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    word_word_string_triplet_list_by_domain_trail_register 
	    tra_dom
	then retrieve tra_dom
	else build_n_store tra_dom
      end
;;
