(** {3 The Tag functionalities for any Entity at any Index in any State.} *) 

let nam_mod = "Tag_v.ml";;

(** {6 Making.} *)

let make ent soi =
  Doublet_v.make ent soi
;;

let tag_of_sole_index_of_int_of_entity soi_up i ent_cur =
  let soi_cur = Sole_index_v.make i soi_up in
  make ent_cur soi_cur
;;

let make_son_list ent_son_l soi_fat =
  let soi_son_l = 
    Sole_index_v.son_sole_index_list_of_length_of_sole_index 
      (List.length ent_son_l)
      soi_fat
  in
  List.map2 make ent_son_l soi_son_l
;;

let make_n_store_son store gss_of_ent ent_son idx_son soi_fat =
  let gss_son = gss_of_ent ent_son in
  let soi_son = Sole_index_v.make idx_son soi_fat in
  store soi_son gss_son;
  make ent_son soi_son
;;

let make_n_store_son_list store gss_of_ent ent_son_l soi_fat =
  let gss_son_l = List.map gss_of_ent ent_son_l in
  let soi_son_l = 
    Sole_index_v.son_sole_index_list_of_length_of_sole_index 
      (List.length ent_son_l)
      soi_fat
  in
  List.iter2 store soi_son_l gss_son_l;
  List.map2 make ent_son_l soi_son_l
;;

(** {6 Extracting.} *)

let entity_off_tag tag =
  Doublet_v.left_off_doublet tag
;;

let sole_index_off_tag tag =
  Doublet_v.right_off_doublet tag
;;

let head_index_off_tag tag =
  let soi = sole_index_off_tag tag in
  Sole_index_v.head_index soi
;;

(** {6 Naming.} *)

let name_as_entity nam_e tag =  
  let ent = entity_off_tag tag in
  nam_e ent
;;

let name nam_e tag =  
  name_as_entity nam_e tag
;;

let as_string nam_e tag =  
  Doublet_v.as_string nam_e Sole_index_v.name tag
;;

let name_as_tag nam_e tag =
  as_string nam_e tag
;;

let string_off sof_e tag =
  let ent = entity_off_tag tag in
  sof_e ent
;;

let longname lna_e tag =
  Format.sprintf "%s Tag_t.tag" (name lna_e tag)
;;

(*  (Symbol_t.Constructor "what", [4, 5]) *)
let fullname fna_e tag =
  Doublet_v.name fna_e Sole_index_v.name tag
;;

(** {6 Iterating.} *)

let map f_l f_r tag =
  Doublet_v.map f_l f_r tag 
;;

let map_entity f_l tag =
  Doublet_v.map_left f_l tag 
;;

let map_sole_index f_r tag =
  Doublet_v.map_right f_r tag 
;;

(** {6 Upgrading.} *)

let upgrade fun_upg tag =   
  map_entity fun_upg tag
;;

let compare_head_index t1 t2 =
  let i1 = head_index_off_tag t1 in
  let i2 = head_index_off_tag t2 in
  compare i1 i2
;;

let compare t1 t2 =
  let s1 = sole_index_off_tag t1 in
  let s2 = sole_index_off_tag t2 in
  Sole_index_v.compare s1 s2
;;

let sole_index_ancestor_of_tag_off_tag_ancestor_list tag tag_anc_l =
  let soi = sole_index_off_tag tag in
  let soi_anc_l = List.map sole_index_off_tag tag_anc_l in
  
  try List_v.only_element_of_predicate_off_list 
      (fun s -> List_v.are_included_of_small_list_of_big_list s soi) 
      soi_anc_l
  with Failure _ -> failwith "No_ancestor:Tag_v.sole_index_ancestor_of_tag_off_tag_ancestor_list"
;;

let tag_ancestor_of_tag_off_tag_ancestor_list tag tag_anc_l =
  let soi_anc = 
    sole_index_ancestor_of_tag_off_tag_ancestor_list 
      tag
      tag_anc_l
  in
  List_v.only_element_of_predicate_off_list (fun (s, i) -> i = soi_anc) tag_anc_l
;;

