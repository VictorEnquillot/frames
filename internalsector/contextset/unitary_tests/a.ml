open Make_test_v;;

testing "Son_name_list_by_context_name_provider_v
   Son_name_list_by_context_name_provider_u_any.ml";;





(* Tracing *)

(* Trace_what_by_module_name_register_v.store "any" "cpu provide";; *)

(* toplevel 
   #use "Son_name_list_by_context_name_provider_u_any.ml";;

*)

open Son_name_list_by_context_name_provider_v;;

let nam_con = "frames";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) = 
  ["entry"; "external"; "general"; "generator"; "internal"; "product"]
);;

let nam_con = "figure";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) = 
["db1points"; "db2geometry"]
);;

let nam_con = "db1points";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) =   
["Point_a"; "segment_BC"; "segment_S"; "triangle_isoacute";
 "triangle_isoobtuse"; "triangle_isoright"]
);;

let nam_con = "Point_a";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) =
[]
);;

let nam_con = "entry";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) = 
  ["input"]
);;

let nam_con = "input";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) = 
  ["input"]
);;

let nam_con = "print_point_a";;
let nam_son_l = provide nam_con;;

(nam_son_l : String.t list ) = 
  []
);;
