open Make_test_v;;

testing "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Poi_a *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "A" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* Point_a.db1  *)
(* coordinates_units_length  meter *)
(* coordinates_units_angle   radian *)
(* coordinates_kind          spherical  *)
(* figure_kind point *)
(* figure_name A *)
(* vertex A_A       1. 0.785398163397448279 0.785398163397448279 *)

(* toplevel 
   #use "Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_point_a.ml";; 

*)

open Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_ibo = "Print_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_point_a"
);;

let nam_var_ext = "Poi_a";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Poi_a"
);;

Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
    (bna_var_ext, bna_ibo);;

let sym_fig = 
  Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;

test_number 3 (
(sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
       (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
         "A")))
);;

let bna_dbo =
    Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 4 (
(bna_dbo : Basicname_t.basicname ) = 
Basicname_t.Databox "Point_a"
);;

let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 5 (
(bna_dba : Basicname_t.basicname ) = 
Basicname_t.Database "db1points"
);;

let tag_fig_l =
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba);;

test_number 6 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
 [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_sector_symbol
       (Figure_context_sector_symbol_t.Figure_context_sector_constructor
         "internal")),
    [5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [7; 5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 7; 5]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "Point_a")),
    [10; 1; 7; 5]);
   (Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "A"))),
    [1; 10; 1; 7; 5])]
);;

let pre_tag_fig (s, i) = (s = sym_fig);;

let tag_fig = List_v.only_element_of_predicate_off_list pre_tag_fig tag_fig_l;;

test_number 7 (
(tag_fig : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "A"))),
   [1; 10; 1; 7; 5])
);;

test_number 8 (
tag_fig = provide (bna_var_ext, bna_ibo)
);;
