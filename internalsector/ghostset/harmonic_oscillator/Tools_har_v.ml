let nam_cod = "Tools_har_v.ml";;

let step_number_of_any_tag tag_any =
  let soi_any = Tag_v.sole_index_off_tag tag_any in
  List_v.ultimate_element_off_list soi_any
;;

let last_done_step_of_register reg =
  if Register_v.is_empty reg 
  then 
    0
  else
    begin
      let tag_any_l = Register_v.key_list reg in
      let step_l = List.map step_number_of_any_tag tag_any_l in
      List_v.sup_of_list step_l
    end
;; 

let step_in_tag_of_step_of_any_symbol_of_any_sole_index step sym_any soi_any =
  let soi_any = 
    List_v.replace_last_element_of_element_of_list step soi_any 
  in
  Tag_v.make sym_any soi_any
;;

let after_last_step_tag_of_register_of_any_symbol_of_any_sole_index reg sym_any soi_any =
  let step_las = last_done_step_of_register reg in
  let tag_any_l = Register_v.key_list reg in 
  
  let tag_las = 
    try List.find 
      (fun t -> step_number_of_any_tag t = step_las)
      tag_any_l
    with 
      Not_found ->  (* step zero *)
	step_in_tag_of_step_of_any_symbol_of_any_sole_index step_las sym_any soi_any 

  in 
  let (sym_las, soi_las) = tag_las in
  let step_nex = step_las + 1 in
  let soi_nex = 
    List_v.replace_last_element_of_element_of_list step_nex soi_las 
  in
  Tag_v.make sym_las soi_nex
;;
