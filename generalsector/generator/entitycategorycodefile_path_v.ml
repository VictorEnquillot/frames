(** {3 The functionalities for a Entitycategorycodefile_path for a Entitycategorycodefile.}  *)

let nam_cod = "Entitycategorycodefile_path_v";;

(** path is [bottom ; ... ; top] *)

(** {6 Modules.} *)

module Ecm_v = Entitycategorycodefile_tag_v
module Dbt_v = Doublet_v
module Dbl_v = Doublet_list_v
module Erm_v = Error_messages_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Pth_t = Entitycategorycodefile_path_t
module Tre_v = Tree_v

(** {6 Displaying.} *)

let name pth_ecc =
  List_v.name_with_separator Ecm_v.name "; " pth_ecc
;;

let node_n_depth_list_off_entitycategorycodefile_path pth_ecc =
  List.map (fun (n, i)-> (n, List.length i)) pth_ecc 
;;

let is_valid_of_entitycategorycodefile_path pth_ecc =
  let dbt_l = node_n_depth_list_off_entitycategorycodefile_path pth_ecc in
  Tre_v.is_sequential_of_node_n_depth_list dbt_l
;;

let check_is_valid_of_entitycategorycodefile_path pth_ecc nam_mod nam_fun =
  if not (is_valid_of_entitycategorycodefile_path pth_ecc)
  then Erm_v.print_fatal_error nam_mod nam_fun
      "depths in path are sequential from n to 1" 
      "depths list is not sequential" 
      (Format.sprintf "check input pth_ecc : @. [%s]" (name pth_ecc))
  else ()
;;

(** {6 Making.} *)

let make mrk_ecc pth_ecc =
  check_is_valid_of_entitycategorycodefile_path pth_ecc nam_cod "make";
  
  let dep_ecc = Ecm_v.entitycategorycodefile_depth_off_entitycategorycodefile_tag mrk_ecc in
  let mrk_ecc_b = List.hd pth_ecc in
  let dep_ecc_b = Ecm_v.entitycategorycodefile_depth_off_entitycategorycodefile_tag mrk_ecc_b in
  
  if is_valid_of_entitycategorycodefile_path pth_ecc
  then mrk_ecc :: pth_ecc
  else Erm_v.print_fatal_error nam_cod
      "make"
      (Format.sprintf "depth of added element = %i" (dep_ecc_b +1))
      (Format.sprintf "depth of added element = %i" dep_ecc) 
      (Format.sprintf "check list pth_ecc : @. [%s]" (name pth_ecc))
;;

(** {6 Extracting.} *)

let top_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc =
  check_is_valid_of_entitycategorycodefile_path pth_ecc nam_cod "top_entitycategorycodefile_tag_off_entitycategorycodefile_path";

  Lst_v.ultimate_element_off_list pth_ecc
;;

let top_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc = top_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Dbt_v.left_off_doublet mrk_ecc
;;


let son_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc =
  check_is_valid_of_entitycategorycodefile_path pth_ecc nam_cod "son_entitycategorycodefile_tag_off_entitycategorycodefile_path";

  Lst_v.penultimate_element_off_list pth_ecc
;;

let son_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc = son_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Dbt_v.left_off_doublet mrk_ecc
;;

let bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc =
  check_is_valid_of_entitycategorycodefile_path pth_ecc nam_cod "bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path";

  Lst_v.first_element_off_list pth_ecc 
;;

let bottom_tree_canonical_index_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc_b = bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Ecm_v.entitycategorycodefile_proper_tree_canonical_index_off_entitycategorycodefile_tag mrk_ecc_b
;;

let bottom_depth_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc_b = bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Ecm_v.entitycategorycodefile_depth_off_entitycategorycodefile_tag mrk_ecc_b
;;

let bottom_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc = bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Dbt_v.left_off_doublet mrk_ecc
;;

let up_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc =
  check_is_valid_of_entitycategorycodefile_path pth_ecc nam_cod "up_entitycategorycodefile_tag_off_entitycategorycodefile_path";

  let mrk_ecc_b = 
    bottom_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc 
  in
  Lst_v.successor_of_element_of_list mrk_ecc_b pth_ecc 
;;

let up_entitycategorycodefile_off_entitycategorycodefile_path pth_ecc =
  let mrk_ecc = up_entitycategorycodefile_tag_off_entitycategorycodefile_path pth_ecc in
  Dbt_v.left_off_doublet mrk_ecc
;;

