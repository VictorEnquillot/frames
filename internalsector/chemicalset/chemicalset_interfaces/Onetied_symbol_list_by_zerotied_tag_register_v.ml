(** {3 Onetied_symbol_list_by_zerotied_tag_register_v} *)

(** {6 Documenting_for_key} *)

let documentation () = 
[
  "Needs: ";
  "Current : DFIG:Onetied_symbol_list_by_zerotied_tag_register_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "Onetied_symbol_list_by_zerotied_tag_register_v.register";;

let register :
    (Zerotied_tag_t.zerotied_tag,
     Onetied_symbol_t.onetied_symbol list) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s  --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key tag_tri =
  Zerotied_tag_v.fullname tag_tri
;;

let name_of_value sym_poi_l  =
 List_v.name_with_separator Onetied_symbol_v.fullname ";\n  " sym_poi_l
;;

let is_empty () =
  Register_v.is_empty register
;;

let compare_entry (k1, v1) (k2, v2) = 
  compare (Zerotied_tag_v.fullname k1) (Zerotied_tag_v.fullname k2)
;;

let dump () = 
  let key_n_val_l = Register_v.entry_list register in 
  let srt_l = List.sort compare_entry key_n_val_l in
  Doublet_list_v.name name_of_key name_of_value srt_l
;;

(** {6 Retrieving_for_formula.} *)

let retrieve tag_tri =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register tag_tri 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

let check_is_complete_sole_index_tree reg =
  let nam_fun = "check_is_complete_sole_index_tree" in

  let tag_tri_l = Register_v.key_list reg in
  let soi_tri_l = List.map Tag_v.sole_index_off_tag tag_tri_l in
  let soi_dos = List.find (fun s -> List.length s = 1) soi_tri_l in
  let soi_tre = Sole_index_v.sole_index_tree_off_sole_index_list_of_sole_index soi_tri_l soi_dos in

  if not (Tree_v.is_complete soi_tre)
    then Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Sole_index Tree extracted from %s were complete" nam_reg)
      (Format.sprintf "Sole_index Tree is :@.   %s"
	(Tree_v.name Sole_index_v.name soi_tre)
      )
      (Format.sprintf "Check that some intermediate storage into %s has not been forgotten" nam_reg)
  else ()
;;

let store tag_tri sym_poi_l =
  let nam_fun = "store" in

  try Register_v.store register tag_tri sym_poi_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_poi_l_old = retrieve tag_tri in
    if sym_poi_l <> sym_poi_l_old
    then 
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "for key >%s< already stored value >%s< equal new one"
	   (name_of_key tag_tri)
	   (name_of_value sym_poi_l_old)
	)
	(Format.sprintf "for new one >%s<@.Register stores:@.    %s" 
	   (name_of_value sym_poi_l)
	   (dump ())
	)
	"Check or re-run if it is a test"
    else 
	check_is_complete_sole_index_tree register;
;;

let store_force tag_tri sym_poi_l =
  Register_v.store_force register tag_tri sym_poi_l
;;

let is_stored tag_tri =
  Register_v.is_stored register tag_tri
;;
