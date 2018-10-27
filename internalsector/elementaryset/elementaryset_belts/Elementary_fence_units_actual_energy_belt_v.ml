(** {3 Elementary_fence_units_actual_energy_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_actual_energy_belt_v";
   "Needs : DELE:Measure_actual_by_elementary_fence_units_actual_tag_provider_v";
   "Needs : DELE:Measure_canonical_by_elementary_fence_units_actual_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Measure_energy)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Extraction from Database : Measure} *)

let measure_actual_of_tag tag_eae =
  let tag_eae = Tag_v.map_entity
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol
      tag_eae
  in
  Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide 
    tag_eae 
;;

let measure_actual_energy_of_tag tag_eae =
  let mea_act = measure_actual_of_tag tag_eae in
  Measure_actual_energy_v.measure_actual_energy_off_measure_actual mea_act
;;

let measure_canonical_of_tag_of_calculation_name tag_eae nam_cal =
  let mea_act = measure_actual_of_tag tag_eae in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_eae =
  let mle = measure_actual_energy_of_tag tag_eae in
  Doublet_v.make tag_eae mle
;;

(** {6 Extracting Measure off Belt} *)

let measure_actual_energy_off_belt bel_eae =
  Doublet_v.right_off_doublet bel_eae
;;

let measure_actual_off_belt bel_eae =
  let mea_ano = measure_actual_energy_off_belt bel_eae in
  Measure_actual_energy_v.measure_actual_of_measure_actual_energy mea_ano
;;

let measure_actual_list_off_belt bel_eae =
  let mea_act = measure_actual_off_belt bel_eae in
  [mea_act]
;;

let measure_canonical_off_belt_of_calculation_name bel_eae nam_cal =
  let mea_act = measure_actual_off_belt bel_eae in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal 
;;

let measure_canonical_list_off_belt_of_calculation_name bel_eae nam_cal =
  let mea_can = measure_canonical_off_belt_of_calculation_name bel_eae nam_cal in
  [mea_can]
;;

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_eae =
  let mea_act = measure_actual_off_belt bel_eae in
  Readee_v.readee_of_measure_actual mea_act
;;

let readee_of_tag tag_eae =
  let bel_eae = belt_of_tag tag_eae in
  readee_off_belt bel_eae 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_eae =
  let rea = readee_off_belt bel_eae in
  [rea]
;;

let closure_of_tag tag_eae =
  let bel_eae = belt_of_tag tag_eae in
  closure_off_belt bel_eae
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_eae =
  let plu_eae = readee_of_tag tag_eae in
  Doublet_v.make tag_eae plu_eae
;;

(** {6 Float} *)

let float_of_tag tag_eae  =
  let mno = measure_actual_energy_of_tag tag_eae in
  Measure_actual_energy_v.float_off_measure_actual_energy mno 
;;

(** {6 Units} *)

let elementary_fence_units_actual_energy_tag_of_tag tag_eae =
  let mno = measure_actual_energy_of_tag tag_eae in
  Measure_actual_energy_v.elementary_fence_units_actual_energy_symbol_off_measure_actual_energy mno
;;

(** {6 Text} *)

let text_of_tag tag_eae =
  let (flo, sym_eae) = measure_actual_energy_of_tag tag_eae in
  Format.sprintf "energy %f %s" flo ( Elementary_fence_units_actual_energy_symbol_v.name sym_eae)
;;

(** {6 Naming} *)

let name bel_eae =
  Doublet_v.name Elementary_fence_units_actual_energy_tag_v.name Measure_actual_energy_v.name bel_eae
;;

let string_off bel_eae =
  Doublet_v.name Elementary_fence_units_actual_energy_tag_v.string_off Measure_actual_energy_v.string_off bel_eae
;;

let longname bel_eae =
  Doublet_v.name Elementary_fence_units_actual_energy_tag_v.longname Measure_actual_energy_v.longname bel_eae
;;

let fullname bel_eae =
  Doublet_v.name Elementary_fence_units_actual_energy_tag_v.fullname Measure_actual_energy_v.fullname bel_eae
;;


(* generated by ./do_belt_as_doublet_fence_units_actual_branch_6sibling_2beltee_v.sh elementary_fence_units_actual energy eae hartree calorie electron_volt joule kilocalorie kilojoule men *)
(* using ./template_belt_as_doublet_fence_units_actual_branch_6sibling_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:05 (UTC+0200) *)

