(** {3 Coordinate_current_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Coordinate_current_formula_t.Current_x _ ->
      Coordinate_current_symbol_t.Current_x
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ccu soi_ccu =
  let tag_ccu = Coordinate_current_tag_v.make sym_ccu soi_ccu in

  let sym_bui_d = 
    Builder_son_symbol_doublet_by_coordinate_current_tag_provider_v.provide 
      tag_ccu 
  in
  let soi_bui_d = Doublet_v.make (1::soi_ccu) (2::soi_ccu) in

  Doublet_v.map2 Coordinate_step_zero_tag_v.make Coordinate_step_minusone_tag_v.make sym_bui_d soi_bui_d
;;

(** {6 Making_for_formula} *)

let make sym_ccu soi_ccu =
  match sym_ccu with
  | Coordinate_current_symbol_t.Current_x ->
      let tag_ccu_d = build_n_store sym_ccu soi_ccu in
      Coordinate_current_formula_t.Current_x tag_ccu_d
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_ccu =
  let soi_ccu = Tag_v.sole_index_off_tag tag_ccu in
  let sym_ccu = Tag_v.symbol_off_tag tag_ccu in
  make sym_ccu soi_ccu
;;


(** {6 Data_tag_listing_off_formula} *)

let builder_son_tag_doublet_off_coordinate_current_formula = function
  | Coordinate_current_formula_t.Current_x tag_ccu_d -> tag_ccu_d
;;

(** {6 Data_tag_listing_off_tag} *)

let builder_son_tag_doublet_off_coordinate_current_tag tag_ccu =
  let for_ccu = retrieve tag_ccu in
  builder_son_tag_doublet_off_coordinate_current_formula for_ccu
;;
