(** {3 The functionalities for a Register} *)
    
let nam_mod = "Register_v";;
    
let make n =
    Hashtbl.create n
;;
(*
let clear reg nam_mod nam_reg =
  Hashtbl.clear reg;
  Format.fprintf Format.std_formatter "@.Warning from %s:@. Register >%s< has been cleared@." nam_mod nam_reg; 
;;
*)
let delete reg =
  Hashtbl.clear reg
;;

let key_list reg = 
  Hashtbl.fold (fun k v l -> k::l ) reg []
;;

let value_list reg = 
  Hashtbl.fold (fun k v l -> v::l ) reg []
;;

let entry_list reg = 
  Hashtbl.fold (fun k v l -> (k,v)::l ) reg []
;;

let length reg =
  Hashtbl.length reg
;;

let is_empty reg =
  length reg = 0
;;

let is_value_stored reg elt =
  let val_l = value_list reg in
  List.mem elt val_l 
;;

let entry_list_of_value reg elt =
  let val_l = entry_list reg in
  List.filter (fun (k, v) -> v = elt) val_l
;;

let key_list_of_value reg elt =
  let ent_l = entry_list_of_value reg elt in
  List.map (fun (k, v) -> k) ent_l
;;

let value_list_of_value_predicate_of_register pre reg =
  let val_l = value_list reg in
  List.filter pre val_l 
;;

let entry_list_of_value_predicate_of_register pre reg =
  let ent_l = entry_list reg in
  List.filter (fun (k, v) -> (pre v)) ent_l
;;

let key_list_of_value_predicate_of_register pre reg =
  let ent_l = entry_list_of_value_predicate_of_register pre reg in
  List.map (fun (k, v) -> k) ent_l
;;

(*
let entry_sorted_list reg = 
  let dbl = entry_list reg in
  List.sort cpk dbl
;;
*)

let is_stored reg key =
  Hashtbl.mem reg key
;;

let store reg key elt =
  if (is_stored reg key) 
  then failwith "Already_stored:Register_v.store"
  else 
    begin
      Hashtbl.add reg key elt;
      if not (is_stored reg key) 
      then failwith "Storage_has_failed:Register_v.store"
      else () 
    end
;; 
    
let retrieve reg key =
  if is_stored reg key 
  then Hashtbl.find reg key
  else failwith "Not_stored:Register_v.retrieve"
;;
    
let store_force reg key elt =
  if (is_stored reg key) 
  then Hashtbl.replace reg key elt
  else store reg key elt
;; 
    
let store_verbose reg key val_ nam_mod nam_reg nam_key nam_val =
  Format.fprintf Format.err_formatter "@.storing   from %s in %s %s %s@."
    nam_mod
    nam_reg
    (nam_val val_)
    (nam_key key);
  store reg key val_
;; 

let store_with_warning reg key val_new nam_mod nam_key nam_val =
  if is_stored reg key 
  then
    begin
      let val_old = retrieve reg key in
      if val_old <> val_new
      then
	begin
	  Error_messages_v.print_fatal_error 
	    nam_mod 
	    "store_with_warning" 
	    (Format.sprintf "if key >%s< has an already stored value it equals new one" 
	       (nam_key key) )
	    (Format.sprintf "stored value is:@. %s@.   and new value is:@.   %s" 
	       (nam_val val_old) (nam_val val_new))
	    "Check"
  	end
      else 
	begin
	  Error_messages_v.print_warning
            nam_mod 
            "store_with_warning" 
            (Format.sprintf "for key >%s<@.    already stored value >%s<"
	       (nam_key key) (nam_val val_old)
	    )
	end
    end
  else store reg key val_new
;; 


let remove reg key =
  Hashtbl.remove reg key
;;

let replace reg key elt =
  Hashtbl.replace reg key elt
;;

let string_of_key_list_of_value reg elt nam_e sep =
  let key_l = key_list_of_value reg elt in
  List_v.name_with_separator nam_e sep key_l
;;

let string_list_of_register nam_key nam_val reg =
  if Hashtbl.length reg = 0
  then []
  else
    begin
      let knv_l = entry_list reg in
      List.map (Doublet_v.name_with_separator nam_key nam_val ", ") knv_l
    end
;;

let string_of_register nam_key nam_val sep reg =
  if Hashtbl.length reg = 0
  then ""
  else
    begin
      let knv_l = entry_list reg in
      Doublet_list_v.name_with_separator nam_key nam_val sep knv_l
    end
;;

let dump nam_key nam_val reg = 
  let str_l = string_list_of_register nam_key nam_val reg in
  List_v.name_in_column (fun s -> s) str_l
;;

let print nam_key nam_val reg = 
  Format.fprintf Format.std_formatter "%s" (dump nam_key nam_val reg)
;;

let only_key_of_value reg v =
  let key_l = key_list_of_value reg v in
  try List_v.element_off_one_element_list key_l
  with Failure "Several_elements:List_v.element_off_one_element_list" ->
    failwith "Several_key_for_value:Register_v.only_key_of_value"
;;
