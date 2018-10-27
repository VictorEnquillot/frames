(** {6 Figure_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Figure_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Figure_Entity_symbol_by_sole_index_register_v";
   ]
  ;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Figure_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Figure_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Figure_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Figure_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Figure_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_figure_context_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_context_symbol_off_figure_symbol
  | "is_figure_field_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_symbol_off_figure_symbol
  | "is_figure_context_database_constructor" ->
     Figure_symbol_v.is_figure_context_database_constructor
  | "is_figure_context_databox_constructor" ->
     Figure_symbol_v.is_figure_context_databox_constructor
  | "is_figure_context_domain_constructor" ->
     Figure_symbol_v.is_figure_context_domain_constructor
  | "is_figure_field_body_triangle_isosceles_acute_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_acute_constructor
  | "is_figure_field_body_triangle_isosceles_equilateral_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_equilateral_constructor
  | "is_figure_field_body_triangle_isosceles_obtuse_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_obtuse_constructor
  | "is_figure_field_body_triangle_isosceles_right_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_right_constructor
  | "is_figure_field_body_triangle_scalene_acute_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_acute_constructor
  | "is_figure_field_body_triangle_scalene_obtuse_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_obtuse_constructor
  | "is_figure_field_body_triangle_scalene_right_constructor" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_right_constructor
  | "is_figure_field_body_segment_constructor" ->
     Figure_symbol_v.is_figure_field_body_segment_constructor
  | "is_figure_field_fence_point_constructor" ->
     Figure_symbol_v.is_figure_field_fence_point_constructor
  | "is_figure_context_database_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_context_database_symbol_off_figure_symbol
  | "is_figure_context_databox_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_context_databox_symbol_off_figure_symbol
  | "is_figure_context_domain_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_context_domain_symbol_off_figure_symbol
  | "is_figure_field_body_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_isosceles_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_isosceles_acute_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_acute_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_isosceles_equilateral_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_equilateral_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_isosceles_obtuse_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_obtuse_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_isosceles_right_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_isosceles_right_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_scalene_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_scalene_acute_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_acute_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_scalene_obtuse_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_obtuse_symbol_off_figure_symbol
  | "is_figure_field_body_triangle_scalene_right_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_triangle_scalene_right_symbol_off_figure_symbol
  | "is_figure_field_body_segment_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_body_segment_symbol_off_figure_symbol
  | "is_figure_field_fence_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_fence_symbol_off_figure_symbol
  | "is_figure_field_fence_point_symbol_off_figure_symbol" ->
     Figure_symbol_v.is_figure_field_fence_point_symbol_off_figure_symbol
  | str ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"It is NOT" "Check"
;;

(** {6 Preparing} *)

let sole_index_n_figure_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Figure_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let soi_n_des_dol = 
    sole_index_n_figure_symbol_list_of_string_predicate_of_sole_index
      str_pre 
      soi_any
  in

  if soi_n_des_dol = []
  then
    let nam_fun = "sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index" in
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "an element were stored in register >%s<@.      for Predicate >%s<@.      with a Sole_index included in path %s" 
	 main_register_name
	 str_pre 
	 (Sole_index_v.name soi_any)
      ) 
      (Format.sprintf "NONE@.    Here is a dump of main_register:\
       @. %s@.    Register length =%i" 
		(main_register_dump ()) 
		(Register_v.length main_register) 
      )
      (Format.sprintf "Check whether the Entity defined by Predicate:@.     >%s<@.      has been stored when created" str_pre)
  else
    begin  
      let inc_dol =
	try Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol
	    
	with
	| Failure "Empty_list:List_v.element_off_one_element_list"
	| Failure "Empty_doublet_list:Doublet_list_v.filter_if_left" ->
	    let nam_fun = "sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index" in
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      (Format.sprintf "an element existed for Predicate >%s<@.    with Sole_index inside path %s" 
		 str_pre 
		 (Sole_index_v.name soi_any)
	      ) 
	      (Format.sprintf "it is EMPTY@.    Here is a dump of main_register:\
               @. %s@.    Register length =%i" 
			(main_register_dump ()) 
			(Register_v.length main_register) 
	      )
              "Check that it has been already stored in Figure_symbol_by_sole_index_register"
         in

       try List_v.element_off_one_element_list inc_dol
       with
       | Failure "Empty_list:List_v.element_off_one_element_list"
       | Failure "Several_elements:List_v.element_off_one_element_list" ->
           let str_l = Register_v.string_list_of_register 
	       main_register_name_of_key
	       main_register_name_of_value 
	       main_register 
        in
	   let nam_fun = "sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index" in

           Error_messages_v.print_fatal_error nam_mod nam_fun
	     (Format.sprintf "One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
		str_pre 
		(Sole_index_v.name soi_any)
	     ) 
	  (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	     (Doublet_list_v.name_with_separator Sole_index_v.name Figure_symbol_v.fullname ";\n   "
		soi_n_des_dol
	     )
	  )
	  (Format.sprintf "Check Register content :@.    %s"
	     (List_v.name_with_separator (fun s->s) ";\n   " str_l)
	  )
    end
;;

let sole_index_of_string_predicate_off_sole_index str_pre soi_any =
  let soi_n_fss =
    sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let figure_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_figure_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Figure_context_field_body_segment} *)

let figure_field_body_segment_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_segment_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_segment_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_segment_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_segment_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_segment_symbol_off_figure_symbol des_pre
;;

let figure_field_body_segment_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_segment_symbol_off_sole_index soi_ldb in
  Figure_field_body_segment_symbol_v.name sym_ldb
;;

let figure_field_body_segment_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_segment_symbol_off_sole_index soi_ldb in
  Figure_field_body_segment_symbol_v.string_off sym_ldb
;;

let figure_field_body_segment_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_segment_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body} *)

let figure_field_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_symbol_off_figure_symbol des_pre
;;

let figure_field_body_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_symbol_off_sole_index soi_ldb in
  Figure_field_body_symbol_v.name sym_ldb
;;

let figure_field_body_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_symbol_off_sole_index soi_ldb in
  Figure_field_body_symbol_v.string_off sym_ldb
;;

let figure_field_body_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_isosceles_acute} *)

let figure_field_body_triangle_isosceles_acute_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_isosceles_acute_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_isosceles_acute_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_acute_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_isosceles_acute_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_isosceles_acute_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_isosceles_acute_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_acute_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_acute_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_isosceles_acute_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_acute_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_acute_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_isosceles_acute_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_acute_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_isosceles_equilateral} *)

let figure_field_body_triangle_isosceles_equilateral_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_isosceles_equilateral_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_isosceles_equilateral_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_equilateral_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_isosceles_equilateral_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_isosceles_equilateral_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_isosceles_equilateral_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_equilateral_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_equilateral_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_equilateral_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_isosceles_equilateral_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_equilateral_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_equilateral_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_equilateral_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_isosceles_equilateral_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_equilateral_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_equilateral_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_isosceles_obtuse} *)

let figure_field_body_triangle_isosceles_obtuse_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_isosceles_obtuse_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_isosceles_obtuse_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_obtuse_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_isosceles_obtuse_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_isosceles_obtuse_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_isosceles_obtuse_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_obtuse_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_obtuse_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_isosceles_obtuse_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_obtuse_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_obtuse_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_isosceles_obtuse_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_obtuse_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_isosceles_right} *)

let figure_field_body_triangle_isosceles_right_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_isosceles_right_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_isosceles_right_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_right_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_isosceles_right_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_isosceles_right_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_isosceles_right_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_right_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_right_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_isosceles_right_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_right_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_right_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_isosceles_right_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_right_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_isosceles} *)

let figure_field_body_triangle_isosceles_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_isosceles_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_isosceles_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_isosceles_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_isosceles_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_isosceles_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_isosceles_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_isosceles_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_isosceles_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_isosceles_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_isosceles_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_scalene_acute} *)

let figure_field_body_triangle_scalene_acute_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_scalene_acute_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_scalene_acute_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_acute_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_scalene_acute_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_scalene_acute_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_scalene_acute_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_acute_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_acute_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_scalene_acute_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_acute_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_acute_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_scalene_acute_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_acute_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_acute_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_scalene_obtuse} *)

let figure_field_body_triangle_scalene_obtuse_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_scalene_obtuse_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_scalene_obtuse_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_obtuse_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_scalene_obtuse_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_scalene_obtuse_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_scalene_obtuse_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_obtuse_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_obtuse_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_scalene_obtuse_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_obtuse_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_obtuse_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_scalene_obtuse_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_obtuse_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_obtuse_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_scalene_right} *)

let figure_field_body_triangle_scalene_right_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_scalene_right_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_scalene_right_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_right_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_scalene_right_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_scalene_right_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_scalene_right_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_right_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_right_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_scalene_right_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_right_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_right_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_scalene_right_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_right_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_right_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle_scalene} *)

let figure_field_body_triangle_scalene_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_scalene_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_scalene_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_scalene_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_scalene_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_scalene_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_scalene_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_scalene_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_scalene_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_scalene_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_scalene_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_body_triangle} *)

let figure_field_body_triangle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_body_triangle_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_body_triangle_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_body_triangle_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_body_triangle_symbol_off_figure_symbol des_pre
;;

let figure_field_body_triangle_name_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_symbol_v.name sym_ldb
;;

let figure_field_body_triangle_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_symbol_off_sole_index soi_ldb in
  Figure_field_body_triangle_symbol_v.string_off sym_ldb
;;

let figure_field_body_triangle_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_body_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_body_triangle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_fence_point} *)

let figure_field_fence_point_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_fence_point_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_fence_point_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_point_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_fence_point_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_fence_point_symbol_off_figure_symbol des_pre
;;

let figure_field_fence_point_name_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_point_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_point_symbol_off_sole_index soi_ldb in
  Figure_field_fence_point_symbol_v.name sym_ldb
;;

let figure_field_fence_point_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_point_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_point_symbol_off_sole_index soi_ldb in
  Figure_field_fence_point_symbol_v.string_off sym_ldb
;;

let figure_field_fence_point_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_point_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_point_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field_fence} *)

let figure_field_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_fence_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_fence_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_fence_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_fence_symbol_off_figure_symbol des_pre
;;

let figure_field_fence_name_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_symbol_off_sole_index soi_ldb in
  Figure_field_fence_symbol_v.name sym_ldb
;;

let figure_field_fence_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_symbol_off_sole_index soi_ldb in
  Figure_field_fence_symbol_v.string_off sym_ldb
;;

let figure_field_fence_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_context_database} *)

let figure_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_context_database_symbol_off_figure_symbol"
    soi_any
;;

let figure_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = figure_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_context_database_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_context_database_symbol_off_figure_symbol des_pre
;;

let figure_context_database_name_off_sole_index soi_any =
  let soi_ldb = figure_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_database_symbol_off_sole_index soi_ldb in
  Figure_context_database_symbol_v.name sym_ldb
;;

let figure_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = figure_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_database_symbol_off_sole_index soi_ldb in
  Figure_context_database_symbol_v.string_off sym_ldb
;;

let figure_context_database_tag_off_sole_index soi_any =
  let soi_ldb = figure_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_context_databox} *)

let figure_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_context_databox_symbol_off_figure_symbol"
    soi_any
;;

let figure_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = figure_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_context_databox_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_context_databox_symbol_off_figure_symbol des_pre
;;

let figure_context_databox_name_off_sole_index soi_any =
  let soi_ldb = figure_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_databox_symbol_off_sole_index soi_ldb in
  Figure_context_databox_symbol_v.name sym_ldb
;;

let figure_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = figure_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_databox_symbol_off_sole_index soi_ldb in
  Figure_context_databox_symbol_v.string_off sym_ldb
;;

let figure_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = figure_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_context_domain} *)

let figure_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_context_domain_symbol_off_figure_symbol"
    soi_any
;;

let figure_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = figure_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_context_domain_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_context_domain_symbol_off_figure_symbol des_pre
;;

let figure_context_domain_name_off_sole_index soi_any =
  let soi_ldb = figure_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_domain_symbol_off_sole_index soi_ldb in
  Figure_context_domain_symbol_v.name sym_ldb
;;

let figure_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = figure_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_domain_symbol_off_sole_index soi_ldb in
  Figure_context_domain_symbol_v.string_off sym_ldb
;;

let figure_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = figure_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_context} *)

let figure_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_context_symbol_off_figure_symbol"
    soi_any
;;

let figure_context_symbol_off_sole_index soi_any =
  let soi_ldb = figure_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_context_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_context_symbol_off_figure_symbol des_pre
;;

let figure_context_name_off_sole_index soi_any =
  let soi_ldb = figure_context_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_symbol_off_sole_index soi_ldb in
  Figure_context_symbol_v.name sym_ldb
;;

let figure_context_string_off_off_sole_index soi_any =
  let soi_ldb = figure_context_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_symbol_off_sole_index soi_ldb in
  Figure_context_symbol_v.string_off sym_ldb
;;

let figure_context_tag_off_sole_index soi_any =
  let soi_ldb = figure_context_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Figure_context_field} *)

let figure_field_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_figure_field_symbol_off_figure_symbol"
    soi_any
;;

let figure_field_symbol_off_sole_index soi_any =
  let soi_ldb = figure_field_sole_index_off_sole_index soi_any in
  let des_pre = 
    figure_symbol_of_string_predicate_off_sole_index 
      "is_figure_field_symbol_off_figure_symbol"
      soi_ldb
  in
  Figure_symbol_v.figure_field_symbol_off_figure_symbol des_pre
;;

let figure_field_name_off_sole_index soi_any =
  let soi_ldb = figure_field_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_symbol_off_sole_index soi_ldb in
  Figure_field_symbol_v.name sym_ldb
;;

let figure_field_string_off_off_sole_index soi_any =
  let soi_ldb = figure_field_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_symbol_off_sole_index soi_ldb in
  Figure_field_symbol_v.string_off sym_ldb
;;

let figure_field_tag_off_sole_index soi_any =
  let soi_ldb = figure_field_sole_index_off_sole_index soi_any in
  let sym_ldb = figure_field_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* done with do_extractor.sh on jeudi 9 juin 2016, 11:41:45 (UTC+0200) *)
