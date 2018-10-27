(** {3 Coordinate_current_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Coordinate_current_formula_v";
   "Current : VHAR:Coordinate_current_value_provider_v";
   "Needed-by : VHAR:";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : Coordinate_current_basic of int is NOT a datastructure";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let register = Coordinate_current_value_register_v.register;;

(** Steps *)

let first_step_tag () =
  let step_ccu = Parameters_value_provider_v.provide_integer "first_step" in
  let soi_ccu = [1; step_ccu] in
  Coordinate_current_tag_v.make Coordinate_current_symbol_v.current_x soi_ccu
;;

let last_done_step () =
  let tag_ccu_l = 
    Register_v.key_list register in
  if List.length tag_ccu_l = 0
  then 
    0
  else
    begin
      let step_l = List.map 
	  Tools_har_v.step_number_of_any_tag 
	  tag_ccu_l 
      in
      List_v.sup_of_list step_l
    end
;; 

let zero_step_tag () =
  let step_ccu = (Parameters_value_provider_v.provide_integer "first_step") -1 in
  let soi_ccu = [1; step_ccu] in
  Coordinate_current_tag_v.make Coordinate_current_symbol_v.current_x soi_ccu
;;

let minusone_step_tag () =
  let step_ccu = (Parameters_value_provider_v.provide_integer "first_step") -2 in
  let soi_ccu = [1; step_ccu] in
  Coordinate_current_tag_v.make Coordinate_current_symbol_v.current_x soi_ccu
;;

let current_step_tag () =
  let step_las = last_done_step () in
  let tag_ccu_l =
    Register_v.key_list 
      register 
  in
  
  let tag_las = 
    try List.find 
      (fun t -> Tools_har_v.step_number_of_any_tag t = step_las)
      tag_ccu_l
    with Not_found -> zero_step_tag ()

  in 
  let (sym_las, soi_las) = tag_las in
  let step_cur = step_las + 1 in
  let soi_cur = List_v.replace_last_element_of_element_of_list step_cur soi_las in
  Tag_v.make sym_las soi_cur
;;

(** *)

let verlet anteprevious_x previous_x =
  let dt = Parameters_value_provider_v.provide_float "time_step" in
  let omega_2 = Parameters_value_provider_v.provide_float "omega_2" in

  let gamma_x = -. omega_2 *. previous_x in

  2. *. previous_x -. anteprevious_x +. gamma_x *. dt *. dt
;;

let previous_step_tag_of_coordinate_current_tag tag_cur =
(* [1; step_cur-1] *)
  let (sym_cur, soi_cur) = tag_cur in
  let step_cur = List_v.ultimate_element_off_list soi_cur in
  let soi_pre = List_v.replace_last_element_of_element_of_list (step_cur-1) soi_cur in
  Tag_v.make sym_cur soi_pre
;;

let anteprevious_step_tag_of_coordinate_current_tag tag_cur =
(* [1; step_cur-2] *)
  let (sym_cur, soi_cur) = tag_cur in
  let step_cur = List_v.ultimate_element_off_list soi_cur in
  let soi_apr = List_v.replace_last_element_of_element_of_list (step_cur-2) soi_cur in
  Tag_v.make sym_cur soi_apr
;;

let previous_x_value_of_coordinate_current_tag tag_ccu =
  let tag_cur_pre = previous_step_tag_of_coordinate_current_tag tag_ccu in 
  if Coordinate_current_value_register_v.is_stored tag_cur_pre
  then
    Coordinate_current_value_register_v.retrieve tag_cur_pre
  else
    Coordinate_step_zero_value_provider_v.provide tag_cur_pre
;;

let anteprevious_x_value_of_coordinate_current_tag tag_ccu =
  let tag_cur_apr = anteprevious_step_tag_of_coordinate_current_tag tag_ccu in 
  if Coordinate_current_value_register_v.is_stored tag_cur_apr
  then
    Coordinate_current_value_register_v.retrieve tag_cur_apr
  else
    Coordinate_step_minusone_value_provider_v.provide tag_cur_apr
;;


(** {6 Building.} *)

let build_and_store tag_ccu =
  let val_previous_x = previous_x_value_of_coordinate_current_tag tag_ccu in
  let val_anteprevious_x = anteprevious_x_value_of_coordinate_current_tag tag_ccu in

  let anteprevious_x = 
    Coordinate_current_value_v.float_off_coordinate_current_value 
      val_anteprevious_x 
  in
  let previous_x = 
    Coordinate_current_value_v.float_off_coordinate_current_value 
      val_previous_x 
  in
  let current_x = verlet anteprevious_x previous_x  in
  let val_ccu = Coordinate_current_value_v.make current_x in

  Coordinate_current_value_register_v.store tag_ccu val_ccu; 
  val_ccu
;;

(** {6 Providing.} *)

let provide tag_ccu =
  if Coordinate_current_value_register_v.is_stored tag_ccu
  then Coordinate_current_value_register_v.retrieve tag_ccu
  else build_and_store tag_ccu
;;

(** {6 Propagating} *)

(* let propagate () = *)
(*   let tag_ccu = current_step_tag () in *)
(*   provide tag_ccu *)
(* ;; *)

let propagate () =
  let step_las = Tools_har_v.last_done_step_of_register register in
  let tag_ccu = 
    Tools_har_v.after_last_step_tag_of_register_of_any_symbol_of_any_sole_index 
      register
      Coordinate_current_symbol_t.Current_x
      [1; step_las +1] (* suppposed to be target *)
 in
  provide tag_ccu
;;


