(** {3 A Point on R3 functionalities.} *)

let nam_mod = "Point_3d_v";;

(** {6 Modules.} *)


(** {6 Making.} *)

let make str x y z = {
  Point_3d_t.name = str;
  Point_3d_t.position = 
  Vector_3d_v.vector_3d_of_float_triplet (x, y, z) ;
}
;;

let point_3d_of_string_of_float_triplet str trp =
  let (x, y, z) = trp in
  make str x y z
;;

let point_3d_of_string_of_vector_3d str vct =
  let (x, y, z) = Vector_3d_v.float_triplet_of_vector_3d vct in
  make str x y z
;;

(** {6 Extracting.} *)

let position_off_point_3d pnt =
  pnt.Point_3d_t.position
;;

let name_off_point_3d pnt =
  pnt.Point_3d_t.name
;;

let vector_3d_off_point_3d pnt =
 position_off_point_3d pnt
;;

let float_triplet_off_point_3d pnt =
  let vct = vector_3d_off_point_3d pnt in
  Vector_3d_v.float_triplet_of_vector_3d vct 
;;

(** {6 Specific applications.} *)

let origin = 
  make "Origin" 0.0 0.0 0.0
;;

let minus pnt =
  let vct = pnt.Point_3d_t.position in
  let min = Vector_3d_v.minus vct in 
  let str = "Minus_" ^ (name_off_point_3d pnt) in
  point_3d_of_string_of_vector_3d str min
;;

let difference pn1 pn2 = 
  let pos1 = position_off_point_3d pn1 in
  let pos2 = position_off_point_3d pn2 in
  Vector_3d_v.difference pos1 pos2
;;

let modulus pnt =
  let vct = position_off_point_3d pnt in
  Vector_3d_v.modulus vct
;;

let distance pn1 pn2 = 
  let dif = difference pn1 pn2 in
  Vector_3d_v.modulus dif
;;

let has_same_position pn1 pn2 =
  distance pn1 pn2 = 0.0 
;;

let has_same_position_at_epsilon eps pn1 pn2 =
 distance pn1 pn2 < eps
;;

let addition_with_vector pnt vct = 
  let nam = name_off_point_3d pnt in
  let pos = position_off_point_3d pnt in
  let vct = Vector_3d_v.addition pos vct in
  let str = nam ^"+V" in
  point_3d_of_string_of_vector_3d str vct
;;

let translation pnt vct = 
  addition_with_vector pnt vct
;;

let scaling pnt scl =
  let nam = name_off_point_3d pnt in
  let vct = Vector_3d_v.scaling pnt.Point_3d_t.position scl in
  let str = nam ^"_Sc" in
  point_3d_of_string_of_vector_3d str vct
;;

let homothecy pnt ori scl = 
  let nam = name_off_point_3d pnt in
  let vct = difference pnt ori in 
  let vc2 = Vector_3d_v.scaling vct scl in
  let str = nam ^"_Hm" in
  point_3d_of_string_of_vector_3d str vc2
;;

let rename pnt str = 
  let vct = position_off_point_3d pnt in
  point_3d_of_string_of_vector_3d str vct
;;

let print ppf pnt =
 Format.fprintf ppf "Point_3d at %a" 
  Vector_3d_v.print pnt.Point_3d_t.position
;;

let read ib =
 Utilities_v.not_yet_implemented nam_mod "read"
;;

let name pnt =
  let nam_pnt = name_off_point_3d pnt in
 Format.sprintf "%s" nam_pnt
;;
