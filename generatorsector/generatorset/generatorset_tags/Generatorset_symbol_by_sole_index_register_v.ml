let nam_cod = "Generatorset_symbol_by_sole_index_register_v.ml";;

(** {6 Register.} *)

let nam_reg = "Generatorset_symbol_by_sole_index_register_v.register";;

let register :
  (Sole_index_t.sole_index, 
   Generatorset_symbol_t.generatorset_symbol) 
    Register_t.register
    =
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let is_empty () =
  Register_v.is_empty register
;;

let name_of_key soi =
  Sole_index_v.name soi
;;

let name_of_value sym_fig =
  Generatorset_symbol_v.fullname sym_fig
;;

(** {6 Dumping.} *)

let compare_entry (k1, v1) (k2, v2) = 
  compare (List.length k1) (List.length k2)
;;

let dump () = 
  let key_n_val_l = Register_v.entry_list register in 
  let srt_l = List.sort compare_entry key_n_val_l in
  Doublet_list_v.name name_of_key name_of_value srt_l
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve soi_gss =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register soi_gss 
  with Failure ("Not_stored:Register_v:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

let check_is_complete_sole_index_tree_of_one_domain_set soi_all_l soi_dom =
  let nam_fun = "check_is_complete_sole_index_tree_of_one_domain_set" in
  
  let idx_dom = List_v.ultimate_element_off_list soi_dom in
  let soi_l = List.filter (fun s -> List_v.ultimate_element_off_list s = idx_dom) soi_all_l in
  let soi_tre = Sole_index_v.sole_index_tree_off_sole_index_list_of_sole_index soi_l soi_dom in
  if not (Tree_v.is_complete soi_tre)
  then Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Sole_index Tree extracted from %s were complete" nam_reg)
      (Format.sprintf "Sole_index Tree is :@.   %s"
	 (Tree_v.name name_of_key soi_tre)
      )
      (Format.sprintf "Check that some intermediate storage into %s has not been forgotten" nam_reg)
  else ()
;;

let check_are_complete_sole_index_trees reg =
  let soi_all_l = Register_v.key_list reg in
  if List.length soi_all_l = 1
  then ()
  else
    begin
      let soi_dom_l = List.filter (fun s -> List.length s = 1) soi_all_l in
      List.iter (check_is_complete_sole_index_tree_of_one_domain_set soi_all_l) soi_dom_l 
    end
;;

let store soi_gss smb_gss =
  try Register_v.store register soi_gss smb_gss
  (* with Failure ("Already_stored:Register_v:store") -> *)
  with Failure _ ->
    let smb_gss_old = retrieve soi_gss in
    if smb_gss <> smb_gss_old
    then Error_messages_v.print_fatal_error nam_cod 
	"store"
	(Format.sprintf "for key >%s< already stored value >%s \"%s\"< equal new one"
	   (Sole_index_v.name soi_gss) 
	   (Generatorset_symbol_v.longname smb_gss_old)
	   (Generatorset_symbol_v.string_off smb_gss_old)
	)
	(Format.sprintf "for new one >%s %s<@.Register stores:@.    %s" 
	   (Generatorset_symbol_v.longname smb_gss) 
	   (Generatorset_symbol_v.string_off smb_gss)
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
      check_are_complete_sole_index_trees register
;;

let store_force soi_gss smb_gss =
  Register_v.store_force register soi_gss smb_gss
;;

let store_builder_dss_datastructure sym_dss_of_sym_gss gss_son_l soi_son_l =
  let dss_son_l = List.map      (* Das_v.map *)
      sym_dss_of_sym_gss
      gss_son_l
  in

  List.iter2                    (* Das_v.iter2 *)
    store
    soi_son_l dss_son_l;
;;

(** {6 Initialization} *)

let register_initialize_of_domain_sole_index soi_dom =
  let nam_fun = "register_initialize_of_domain_sole_index" in

  let idx_dom = List.hd soi_dom in
  let sym_dom = Domain_symbol_v.domain_symbol_of_list_index idx_dom in
  let gss_dom = 
    Generatorset_symbol_v.generatorset_symbol_of_domain_symbol 
      sym_dom 
  in
  
  Error_messages_v.print_warning nam_cod nam_fun
    (Format.sprintf "Generatorset_symbol_by_sole_index_register initialized with Domain tag >%s<"
       (Tag_v.name Domain_symbol_v.name (Tag_v.make sym_dom soi_dom))
    );
     
    store soi_dom gss_dom;
;;  

(** {6 Storing Builder Gss Datastructure by Sole_index} *)

let sole_index_son_list_of_symbol_son_list_of_sole_index sym_son_l soi_fat =
  let nam_fun = "sole_index_son_list_of_symbol_son_list_of_sole_index" in

  if (is_empty ())
  then 
    begin
      if List.length soi_fat <> 1
      then
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  (Format.sprintf "Father Generatorset_symbol were stored at sole_index :@.      %s" 
	     (List_v.name_with_separator (Format.sprintf "%i") ";\  " soi_fat)
	  )
	  "It is NOT" "Check when Father was created"
      else
	register_initialize_of_domain_sole_index soi_fat;
    end
  else () ;
  
  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index 1 (List.length sym_son_l) soi_fat
;;

