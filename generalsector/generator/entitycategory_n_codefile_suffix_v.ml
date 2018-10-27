(** {3 The functionalities for an Entitycategory_n_codefile_suffix Doublet.}  *)

let nam_cod = "entitycategory_n_codefile_suffix_v.ml";;

module Enc_v = Entitycategory_v
module Msu_v = Codefile_suffix_v
module Dbt_v = Doublet_v

(** {6 Making.} *)

let make enc suf =
  Dbt_v.make enc suf
;;

(** {6 Extracting} *)

let entitycategory_off_entitycategory_n_codefile_suffix ecs =
  Dbt_v.left_off_doublet ecs 
;;

let codefile_suffix_off_entitycategory_n_codefile_suffix ecs =
  Dbt_v.right_off_doublet ecs 
;;

(** {6 Displaying.} *)

let name ecs =
  let enc = entitycategory_off_entitycategory_n_codefile_suffix ecs in
  let mss = codefile_suffix_off_entitycategory_n_codefile_suffix ecs in

  Format.sprintf "%s_%s" (Enc_v.name enc) (Msu_v.name mss)
;;

let abbreviation_argument ecs =
  let enc = entitycategory_off_entitycategory_n_codefile_suffix ecs in
  Enc_v.abbreviation_argument enc
;;

let abbreviation_module ecs =
  let enc = entitycategory_off_entitycategory_n_codefile_suffix ecs in
  let abb_cfi = Enc_v.abbreviation_module enc in
  let mss = codefile_suffix_off_entitycategory_n_codefile_suffix ecs in

  Format.sprintf "%s_%s" abb_cfi (Msu_v.name mss)
;;

