open Make_test_v;;

testing "Figure_tag_all_list_by_database_name_n_databox_name_provider_v with
    Figure_tag_all_list_by_database_name_n_databox_name_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debugging *)

                                       
(* toplevel 
   #use "Figure_tag_all_list_by_database_name_n_databox_name_provider_u_point_a_debug.ml";; 
         
*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_tag_all_list_by_database_name_n_databox_name_provider_v;; 

let tag_fig_t = Figure_tag_tree_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo);;

test_number 1 (
( tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_domain_symbol
        (Figure_context_domain_symbol_t.Figure_context_domain_constructor
          "figure")),
     [8]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_database_symbol
          (Figure_context_database_symbol_t.Figure_context_database_constructor
            "db1figure")),
       [1; 8]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_context_symbol
          (Figure_context_symbol_t.Figure_context_databox_symbol
            (Figure_context_databox_symbol_t.Figure_context_databox_constructor
              "point_a")),
         [1; 1; 8]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
               (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
                 "A"))),
          [1; 1; 1; 8])])])])
);;

let tag_fig_l = Tree_v.node_list_off_tree tag_fig_t;;

test_number 2 (
( tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1figure")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
    [1; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))),
    [1; 1; 1; 8])]
);;

test_number 3 (
tag_fig_l = provide (nam_dba, nam_dbo)
);;

