(** {3 Db1pointsdata_set_body_cluster_vertex_tag_v} *)

let documentation () = 
[
  "Current : TDB1:Db1pointsdata_set_body_cluster_vertex_tag_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the couple (Db1pointsdata_set_body_cluster_vertex_symbol, Sole_index)";
  "How-is-it-done: ";
]
;;

(** {6 Naming} *)

let name_as_symbol tag_ttt =
  Tag_v.name_as_entity Db1pointsdata_set_body_cluster_vertex_symbol_v.name tag_ttt
;;

let as_string tag_ttt =
  Tag_v.as_string Db1pointsdata_set_body_cluster_vertex_symbol_v.name tag_ttt
;;

let name tag_ttt =
  Tag_v.name Db1pointsdata_set_body_cluster_vertex_symbol_v.name tag_ttt
;;

let string_off tag_ttt =
  Tag_v.string_off Db1pointsdata_set_body_cluster_vertex_symbol_v.string_off tag_ttt
;;

let longname tag_ttt =
  Tag_v.longname Db1pointsdata_set_body_cluster_vertex_symbol_v.longname tag_ttt
;;

let fullname tag_ttt =
  Tag_v.fullname Db1pointsdata_set_body_cluster_vertex_symbol_v.fullname tag_ttt
;;

(** {6 Making} *)

let make soi_ttt nam_ttt s =
  let sym_ttt = Db1pointsdata_set_body_cluster_vertex_symbol_v.make nam_ttt s in
  Tag_v.make sym_ttt soi_ttt
;;

(** {6 Coercing} *)

let db1pointsdata_tag_of_db1pointsdata_set_body_cluster_vertex_tag tag_ttt =
  Tag_v.map_entity (* Coerce Up *)
     Db1pointsdata_symbol_v.db1pointsdata_symbol_of_db1pointsdata_set_body_cluster_vertex_symbol
    tag_ttt
;;

let db1pointsdata_set_body_cluster_vertex_tag_off_db1pointsdata_tag tag_db1 =
  Tag_v.map_entity (* Coerce Down *)
     Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol
    tag_db1
;;


(* Done by generator/./do_tag_v.sh db1pointsdata_set_body_cluster_vertex *)
(* using generator/template_tag_v.ml *)
(* Done on dimanche 4 juin 2017, 12:45:41 (UTC+0200) *)

