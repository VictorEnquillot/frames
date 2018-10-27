open Make_test_v;;

testing "Figure_body_container_v with
   Figure_body_container_u_segment_bc.ml";;

(* Deleting Registers *)
Register_v.delete  Box_name_n_base_name_by_sole_index_register_v.register;;
Register_v.delete  Context_name_by_context_nameofdirectory_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Databasefiles_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete  Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete  Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete  Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete  Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete  Database_ordinal_by_database_name_register_v.register;;
Register_v.delete  Databox_name_list_by_unit_register_v.register;;
Register_v.delete  Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete  Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete  Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.register;;
Register_v.delete  Databox_ordinal_by_databox_name_register_v.register;;
Register_v.delete  Db1pointsdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete  Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete  Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete  Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.register;;
Register_v.delete  Domaininput_nameofdirectory_list_in_entrysector_by_unit_register_v.register;;
Register_v.delete  Domain_name_list_by_unit_register_v.register;;
Register_v.delete  Domain_ordinal_by_domain_name_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_in_internalsector_by_unit_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_in_productsector_by_unit_register_v.register;;
Register_v.delete  Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete  Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete  Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Figure_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete  Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete  Figure_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete  Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;
Register_v.delete  Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete  Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete  Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete  Nameofdirectory_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete  Nameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete  Sector_name_list_by_unit_register_v.register;;
Register_v.delete  Sector_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete  Sector_ordinal_by_sector_name_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;


(* Tracing *)

(* toplevel 
   #use "Figure_body_container_u_segment_bc.ml";;

*)

open Figure_body_segment_container_v;;

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;
let sof_fig = "BC";;


let tag_fig_l = Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);; 

test_number 1 (
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
         "segment_BC")),
    [9; 1; 7; 5]);
   (Figure_symbol_t.Figure_body_symbol
     (Figure_body_symbol_t.Figure_body_segment_symbol
       (Figure_body_segment_symbol_t.Figure_body_segment_constructor "BC")),
    [1; 9; 1; 7; 5]);
   (Figure_symbol_t.Figure_fence_symbol
     (Figure_fence_symbol_t.Figure_fence_point_symbol
       (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B")),
    [1; 1; 9; 1; 7; 5]);
   (Figure_symbol_t.Figure_fence_symbol
     (Figure_fence_symbol_t.Figure_fence_point_symbol
       (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C")),
    [2; 1; 9; 1; 7; 5])]
);;

(* Segment BC *)

let tag_fig_seg = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = sof_fig) tag_fig_l;;

test_number 2 (
( tag_fig_seg : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index ) =
  (Figure_symbol_t.Figure_body_symbol
    (Figure_body_symbol_t.Figure_body_segment_symbol
      (Figure_body_segment_symbol_t.Figure_body_segment_constructor "BC")),
   [1; 9; 1; 7; 5])
);;

(* Argument tag_fbs *)

let tag_fbs = Tag_v.map_entity Figure_symbol_v.figure_body_segment_symbol_off_figure_symbol tag_fig_seg;;

test_number 3 (
( tag_fbs : Figure_body_segment_symbol_t.figure_body_segment_symbol Tag_t.tag ) =
  (Figure_body_segment_symbol_t.Figure_body_segment_constructor "BC",
   [1; 9; 1; 7; 5])
);;


(** {9 Builder Tag list} *)

let tag_fig = tag_fig_seg;;

let bui_fbs = Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig;;

let bui_fbs = builder_tag_list_of_tag tag_fbs;;

let con_fbs = container_of_tag tag_fbs;;

test_number 4 (
( con_fbs :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag
  Duo_t.duo ) =
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B",
    [1; 1; 9; 1; 7; 5]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C",
    [2; 1; 9; 1; 7; 5]))
);;

