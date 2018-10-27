(** {3 Provides a Righthandside_string for each Entity_name *)

let nam_cod = "Righthandside_string_by_constructor_leaf_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v";
   "What-is-it : it is the string at the RHS of the = sign in a \"builders\" record";
   "Definition : Constructor_leaf is a Leaf of the Constructor Tree (CT), i.e. a LHS Entity in containers set";
 ]
;;

(** {6 Registering} *)

let nam_reg = "righthandside_string_by_constructor_leaf_trail_register";;

let righthandside_string_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     string) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_col =
  try Register_v.retrieve righthandside_string_by_constructor_leaf_trail_register tra_col
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith 
      "Not_stored:Righthandside_string_by_constructor_leaf_trail_provider_v.ml.retrieve"
;;  

let store tra_col str =
  try Register_v.store righthandside_string_by_constructor_leaf_trail_register tra_col str
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old = retrieve tra_col in
    if str_old <> str
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_col in
	let tra_cat = List.tl tra_col in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf 
	     "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_col)
             (Utilities_v.identity str_old) 
	  )
	  
          (Format.sprintf ">%s<" (Utilities_v.identity str) )
          (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning
	nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_col)
           (Utilities_v.identity str_old) 
	)
;;

let is_stored tra_col =
  Register_v.is_stored righthandside_string_by_constructor_leaf_trail_register tra_col
;;

let build tra_col =
  let nam_fun = "build" in
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_col in 

  let dou_clb_rhs_l = 
    Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide
      tra_dos
  in
 
  match dou_clb_rhs_l with
  | [] ->
      Utilities_v.failwith_of_message_of_code_name_of_function_name 
	"Doublet_list_empty" nam_cod nam_fun
	
  | _ ->
      let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_col in 
      let dou_cr =
	try Doublet_list_v.find_if_left 
	    (fun e -> e = nam_ent) 
	    dou_clb_rhs_l
	with Failure "Not_found:Doublet_list_v.ml:find_if_left" ->
	  Utilities_v.failwith_of_message_of_code_name_of_function_name 
	    "Constructor_leaf_basename_not_found" nam_cod nam_fun
      in
      
      Doublet_v.right_off_doublet dou_cr
;;

let build_n_store tra_col =
  let str_rhs = build tra_col in
  store tra_col str_rhs;
  str_rhs
;;

let provide tra_col =
  if not (Trail_v.has_of_head_key_off_trail "entity" tra_col) 
  then 
    Error_messages_v.print_fatal_error nam_cod "provide"
      "entity trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_col))
      "Check"
  else
    begin
      if Register_v.is_stored 
	  righthandside_string_by_constructor_leaf_trail_register 
	  tra_col
      then retrieve tra_col
      else build_n_store tra_col 
    end
;;
