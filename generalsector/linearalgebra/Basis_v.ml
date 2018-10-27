(** {3 A Basis set in Rn} *)

let nam_mod = "Basis_v";;

(** {6 Aliasing} *)

let axis_ith_of_int i len = Vector_v.unity_at_int_of_int i len
;; 

let rec canonical len =
  let all_1 = 
    List_v.repeated_list_of_count_of_element (Index_p.int_of_index (Index_p.index len)) 1 
  in
  List.map (fun x -> axis_ith_of_int x len) all_1
;;

(** {6 Naming} *)

let name bas = 
  List_v.name_with_separator Vector_v.name "; " bas 
;;

