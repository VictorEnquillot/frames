(** {3 Domain_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Domain_value_v";
   "Needed-by : VGNR:Domain_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node and Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let category_value_list_off_domain_tag tag_dom =
  let tag_ent_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom in
  List.map Category_value_v.retrieve tag_ent_l
;;

(** {6 Making_for_value} *)

let make sym_dom soi_dom =
  let tag_dom = Tag_v.make sym_dom soi_dom in
  let val_cat_l = category_value_list_off_domain_tag tag_dom in
  match sym_dom with
  | Domain_symbol_t.Chemical ->
      Domain_value_t.Chemical val_cat_l

  | Domain_symbol_t.Music ->
      Domain_value_t.Music val_cat_l

  | Domain_symbol_t.Fake ->
      Domain_value_t.Fake val_cat_l

  | Domain_symbol_t.Natural ->
      Domain_value_t.Natural val_cat_l

  | Domain_symbol_t.Generator ->
      Domain_value_t.Generator val_cat_l

  | Domain_symbol_t.Figure ->
      Domain_value_t.Figure val_cat_l

  | Domain_symbol_t.Logic ->
      Domain_value_t.Logic val_cat_l

  | Domain_symbol_t.Common -> Domain_value_t.Common val_cat_l

  | Domain_symbol_t.Database _ -> Domain_value_t.Database val_cat_l

  | Domain_symbol_t.Elementary -> Domain_value_t.Elementary val_cat_l

  | Domain_symbol_t.Input _ -> Domain_value_t.Input val_cat_l

  | Domain_symbol_t.Operator -> Domain_value_t.Operator val_cat_l

  | Domain_symbol_t.Property -> Domain_value_t.Property val_cat_l

 (*  | Domain_symbol_t.Forcefield -> *)
 (*      Domain_value_t.Forcefield val_cat_l *)

 (* | Domain_symbol_t.Model -> *)
 (*      Domain_value_t.Model val_cat_l *)

 (*  | Domain_symbol_t.Molecule -> *)
 (*      Domain_value_t.Molecule val_cat_l *)

 (*  | Domain_symbol_t.Physical -> *)
 (*      Domain_value_t.Physical val_cat_l *)

 (*  | Domain_symbol_t.Primitive -> *)
 (*      Domain_value_t.Primitive val_cat_l *)

 (*  | Domain_symbol_t.Prototype -> *)
 (*      Domain_value_t.Prototype val_cat_l *)

 (*  | Domain_symbol_t.Simulation -> *)
 (*      Domain_value_t.Simulation val_cat_l *)

 (*  | Domain_symbol_t.Wavefunction -> *)
 (*      Domain_value_t.Wavefunction val_cat_l *)

 (*  | Domain_symbol_t.Wikitool -> *)
 (*      Domain_value_t.Wikitool val_cat_l *)
;;

(** {6 Retrieving} *)

let retrieve tag_dom =
  let soi_dom = Tag_v.sole_index_off_tag tag_dom in
  let sym_dom = Tag_v.entity_off_tag tag_dom in
  make sym_dom soi_dom
;;

(** {6 Extracting} *)

let category_value_list_off_domain_value val_dom =
  match val_dom with
  | Domain_value_t.Chemical val_cat_l ->
      val_cat_l
  | Domain_value_t.Generator val_cat_l ->
      val_cat_l
  | Domain_value_t.Figure val_cat_l ->
      val_cat_l
  | Domain_value_t.Logic val_cat_l ->
      val_cat_l
  | Domain_value_t.Music val_cat_l ->
     val_cat_l
  | Domain_value_t.Natural val_cat_l ->
     val_cat_l
  | Domain_value_t.Fake val_cat_l ->     val_cat_l

 | Domain_value_t.Common val_cat_l ->      val_cat_l

  | Domain_value_t.Database val_cat_l ->      val_cat_l

  | Domain_value_t.Elementary val_cat_l ->      val_cat_l

  | Domain_value_t.Input val_cat_l ->      val_cat_l

  | Domain_value_t.Operator val_cat_l ->      val_cat_l

  | Domain_value_t.Property val_cat_l ->      val_cat_l

  (* | Domain_value_t.Forcefield val_cat_l -> *)
  (*     val_cat_l *)
  (* | Domain_value_t.Model val_cat_l -> *)
  (*     val_cat_l *)
  (* | Domain_value_t.Molecule val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Physical val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Primitive val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Prototype val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Simulation val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Wavefunction val_cat_l -> *)
  (*    val_cat_l *)
  (* | Domain_value_t.Wikitool val_cat_l -> *)
  (*    val_cat_l *)
;;

let string_list_off_domain_value val_dom =
  let val_cat_l = category_value_list_off_domain_value val_dom in
  List.map Category_value_v.string_list_off_category_value val_cat_l
;;
