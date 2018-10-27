(** {3 The functionalities fro a Datastructure Triplet of Entitycategorysuffix.} *)

module Cpc_v = Caml_paragraph_context_v
module Ecs_v = Entitycategorysuffix_v
module Tre_v = Tree_v
module Trp_v = Triplet_v

let make ecs_top ecs_knd ecs_s_l =
  Trp_v.make ecs_top ecs_knd ecs_s_l
;;

let datastructure_triplet_of_caml_paragraph_context ctt_cpg =
  let ecs_t = 
    Cpc_v.entitycategorysuffix_tree_off_caml_paragraph_context ctt_cpg
  in
  let ecs_l = Tre_v.list_off_tree ecs_t in
  let ecs_top = List.hd ecs_l in
  let ecs_knd = List.hd (List.tl ecs_l) in
  let ecs_s_l = List.tl (List.tl ecs_l) in
  make ecs_top ecs_knd ecs_s_l
;;

let top_entitycategorysuffix_off_datastructure_triplet dst_trp =
  Trp_v.left_off_triplet dst_trp 
;;

let kind_entitycategorysuffix_off_datastructure_triplet dst_trp =
  Trp_v.middle_off_triplet dst_trp 
;;

let son_entitycategorysuffix_list_off_datastructure_triplet dst_trp =
  Trp_v.right_off_triplet dst_trp 
;;

let top_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.left_off_triplet dst_trp 
;;

let kind_entitycategorysuffix_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.middle_off_triplet dst_trp 
;;

let son_entitycategorysuffix_list_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.right_off_triplet dst_trp 
;;
