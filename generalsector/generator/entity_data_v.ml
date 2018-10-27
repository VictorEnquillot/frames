(** {3 The functionalities for a Data for an Entity.}  *)

let nam_cod = "Entity_data_v";;

(** {3 Codefiles.} *)

module End_t = Entity_data_t
module Erm_v = Error_messages_v
module Fln_v = Filename_p
module Fio_v = Fileio_v
module Idx_p = Index_p
module Lst_v = List_v
module Str_v = String_v
module Tre_v = Tree_v

(** {6 Querying.} *)

(** {3 Making.} *)

(** {6 Reading} *)

let entity_data_filename_of_entityname nam_ent =
  Filename_p.filename ( "do_" ^ nam_ent ^ "_constructor_set.dat" )
;;

let is_entityname_off_string str =
  let fln = entity_data_filename_of_entityname str in
  Fio_v.is_existing_of_filename fln
;;

let entity_data_of_entityname nam_ent =
  if is_entityname_off_string nam_ent 
  then
    begin
      (* each constructor son is on a line *)
      let fln = entity_data_filename_of_entityname nam_ent in
      Fio_v.string_list_of_filename fln 
    end
  else []
;;

let count_son_of_entityname nam_ent =
  let dat_ent = entity_data_of_entityname nam_ent in
  Idx_p.make (List.length dat_ent)
;;

let is_singleson_off_entityname nam_ent = (* ex. : aggregate *)
  (is_entityname_off_string nam_ent)
    && (count_son_of_entityname nam_ent = Idx_p.one)
;;

let singleson_string_of_entityname nam_ent = 
  (* ex. aggregate -> "doublet string ordinal" *)
    if is_singleson_off_entityname nam_ent
    then
      begin
	let dat_ent = entity_data_of_entityname nam_ent in
	List.hd dat_ent
      end
    else
      Erm_v.print_fatal_error nam_cod 
	"singleson_string_of_entityname" 
	"a single son entity" 
	nam_ent "check"
;;

let singleson_string_list_of_entityname nam_ent = 
  (* ex. aggregate -> ["doublet"; "string"; "ordinal"] *)
    let str = singleson_string_of_entityname nam_ent in
    Str_v.split_of_c ' ' str
 ;;

let singleson_string_list_head_of_entityname nam_ent = 
  (* ex. aggregate -> "doublet" *)
    let str_l = singleson_string_list_of_entityname nam_ent in
    List.hd str_l
;;

let singleson_string_list_tail_of_entityname nam_ent = 
  (* ex. aggregate -> ["string"; "ordinal"] *)
    let str_l = singleson_string_list_of_entityname nam_ent in
    List.tl str_l
 ;;

let is_datastructure_off_entityname nam_ent = (* ex. : aggregate *)
  if not (is_singleson_off_entityname nam_ent)
  then false
  else
    begin
      let kind = singleson_string_list_head_of_entityname nam_ent in
      match kind with 
        | "doublet" 
	| "triplet" 
	| "tree" -> true
	| _ -> false 
    end
;;

let datastructure_kind_of_entityname nam_ent = (* ex. : "doublet" *)
  if not (is_datastructure_off_entityname nam_ent)
  then failwith "Not_a_datastructure" 
  else singleson_string_list_head_of_entityname nam_ent
;;

let entitynameson_list_of_datastructure_entityname nam_ent = 
  if not (is_datastructure_off_entityname nam_ent)
  then failwith "End_v.String_is_not_a_datastructure" 
  else singleson_string_list_tail_of_entityname nam_ent
;;

let rec string_tree_of_entityname nam_ent =
  let dat_ent = entity_data_of_entityname nam_ent in
   match dat_ent with 
    | [] -> Tre_v.make_of_leaf nam_ent
    | h::[] -> Tre_v.make nam_ent [Tre_v.make_of_leaf h]
    | h::t_l ->
	Tre_v.make nam_ent (List.map string_tree_of_entityname dat_ent)
;;

(** {3 Displaying.} *)

