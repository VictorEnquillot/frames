(** {3 The functionalities for a Constructor_path for a Constructor.}  *)

let nam_cod = "Constructor_path_v";;

(** path is [bottom ; ... ; top] *)

(** {6 Modules.} *)

module Cnm_v = Constructor_tag_v
module Dbt_v = Doublet_v
module Dbl_v = Doublet_list_v
module Erm_v = Error_messages_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Pth_t = Constructor_path_t
module Tre_v = Tree_v

(** {6 Displaying.} *)

let name pth_cnt =
  List_v.name_with_separator Cnm_v.name "; " pth_cnt
;;

let node_n_depth_list_off_constructor_path pth_cnt =
  List.map (fun (n, i)-> (n, List.length i)) pth_cnt 
;;

let is_valid_of_constructor_path pth_cnt =
  let dbt_l = node_n_depth_list_off_constructor_path pth_cnt in
  Tre_v.is_sequential_of_node_n_depth_list dbt_l
;;

let check_is_valid_of_constructor_path pth_cnt nam_mod nam_fun =
  if not (is_valid_of_constructor_path pth_cnt)
  then Erm_v.print_fatal_error nam_mod nam_fun
      "depths in path are sequential from n to 1" 
      "depths list is not sequential" 
      (Format.sprintf "check input pth_cnt : @. [%s]" (name pth_cnt))
  else ()
;;

(** {6 Making.} *)

let make mrk_cnt pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "make";
  
  let dep_cnt = Cnm_v.constructor_depth_off_constructor_tag mrk_cnt in
  let mrk_cnt_b = List.hd pth_cnt in
  let dep_cnt_b = Cnm_v.constructor_depth_off_constructor_tag mrk_cnt_b in
  
  if is_valid_of_constructor_path pth_cnt
  then mrk_cnt :: pth_cnt
  else Erm_v.print_fatal_error nam_cod
      "make"
      (Format.sprintf "depth of added element = %i" (dep_cnt_b +1))
      (Format.sprintf "depth of added element = %i" dep_cnt) 
      (Format.sprintf "check list pth_cnt : @. [%s]" (name pth_cnt))
;;

(** {6 Extracting.} *)

let top_constructor_tag_off_constructor_path pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "top_constructor_tag_off_constructor_path";

  Lst_v.ultimate_element_off_list pth_cnt
;;

let son_constructor_tag_off_constructor_path pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "son_constructor_tag_off_constructor_path";

  Lst_v.penultimate_element_off_list pth_cnt
;;

let bottom_constructor_tag_off_constructor_path pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "bottom_constructor_tag_off_constructor_path";

  Lst_v.first_element_off_list pth_cnt 
;;

let bottom_constructor_proper_tree_canonical_index_off_constructor_path pth_cnt =
  let mrk_cnt_b = bottom_constructor_tag_off_constructor_path pth_cnt in
  Cnm_v.constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt_b
;;

let bottom_constructor_depth_off_constructor_path pth_cnt =
  let mrk_cnt_b = bottom_constructor_tag_off_constructor_path pth_cnt in
  Cnm_v.constructor_depth_off_constructor_tag mrk_cnt_b
;;

let up_constructor_tag_off_constructor_path pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "up_constructor_tag_off_constructor_path";

  let mrk_cnt_b = 
    bottom_constructor_tag_off_constructor_path pth_cnt 
  in
  Lst_v.successor_of_element_of_list mrk_cnt_b pth_cnt 
;;

let down_constructor_tag_off_constructor_path pth_cnt =
  check_is_valid_of_constructor_path pth_cnt nam_cod "down_constructor_tag_off_constructor_path";
  Utils_v.not_yet_implemented nam_cod "down_constructor_tag_off_constructor_path"
;;

