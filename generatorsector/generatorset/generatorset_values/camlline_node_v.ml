(** {3 Camlline_node_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_node_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_ccc soi_cal =
  match sym_ccc with
  | Camlline_node_symbol_t.Camlline_node_sub_1_symbol sym_clc ->
	(Camlline_node_sub_1_value_v.string_of sym_clc soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_2_symbol sym_cld -> 
	(Camlline_node_sub_2_value_v.string_of sym_cld soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_3_symbol sym_clu -> 
	(Camlline_node_sub_3_value_v.string_of sym_clu soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_4_symbol sym_clv -> 
	(Camlline_node_sub_4_value_v.string_of sym_clv soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_5_symbol sym_clt -> 
	(Camlline_node_sub_5_value_v.string_of sym_clt soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_6_symbol sym_clc ->
	(Camlline_node_sub_6_value_v.string_of sym_clc soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_7_symbol sym_cld -> 
	(Camlline_node_sub_7_value_v.string_of sym_cld soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_8_symbol sym_clu -> 
	(Camlline_node_sub_8_value_v.string_of sym_clu soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_9_symbol sym_clv -> 
	(Camlline_node_sub_9_value_v.string_of sym_clv soi_cal)

;;

(** {6 Making_for_value} *)

let make sym_ccc soi_cal =
  match sym_ccc with
  | Camlline_node_symbol_t.Camlline_node_sub_1_symbol sym_clc ->
      Camlline_node_value_t.Camlline_node_sub_1_value  
	(Camlline_node_sub_1_value_v.make sym_clc soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_2_symbol sym_cld -> 
      Camlline_node_value_t.Camlline_node_sub_2_value
	(Camlline_node_sub_2_value_v.make sym_cld soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_3_symbol sym_clv -> 
      Camlline_node_value_t.Camlline_node_sub_3_value 
	(Camlline_node_sub_3_value_v.make sym_clv soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_4_symbol sym_clt -> 
      Camlline_node_value_t.Camlline_node_sub_4_value 
	(Camlline_node_sub_4_value_v.make sym_clt soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_5_symbol sym_clu -> 
      Camlline_node_value_t.Camlline_node_sub_5_value 
	(Camlline_node_sub_5_value_v.make sym_clu soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_6_symbol sym_clc ->
      Camlline_node_value_t.Camlline_node_sub_6_value  
	(Camlline_node_sub_6_value_v.make sym_clc soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_7_symbol sym_cld -> 
      Camlline_node_value_t.Camlline_node_sub_7_value
	(Camlline_node_sub_7_value_v.make sym_cld soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_8_symbol sym_clv -> 
      Camlline_node_value_t.Camlline_node_sub_8_value 
	(Camlline_node_sub_8_value_v.make sym_clv soi_cal)

  | Camlline_node_symbol_t.Camlline_node_sub_9_symbol sym_clt -> 
      Camlline_node_value_t.Camlline_node_sub_9_value 
	(Camlline_node_sub_9_value_v.make sym_clt soi_cal)

;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cal = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccc =
  match val_ccc with
  | Camlline_node_value_t.Camlline_node_sub_1_value val_cac ->
      Camlline_node_sub_1_value_v.string_off val_cac

  | Camlline_node_value_t.Camlline_node_sub_2_value val_cad -> 
	Camlline_node_sub_2_value_v.string_off val_cad

  | Camlline_node_value_t.Camlline_node_sub_3_value val_cav -> 
      Camlline_node_sub_3_value_v.string_off val_cav

  | Camlline_node_value_t.Camlline_node_sub_4_value val_cat -> 
      Camlline_node_sub_4_value_v.string_off val_cat
	
  | Camlline_node_value_t.Camlline_node_sub_5_value val_cau -> 
      Camlline_node_sub_5_value_v.string_off val_cau

  | Camlline_node_value_t.Camlline_node_sub_6_value val_cac ->
      Camlline_node_sub_6_value_v.string_off val_cac

  | Camlline_node_value_t.Camlline_node_sub_7_value val_cad -> 
	Camlline_node_sub_7_value_v.string_off val_cad

  | Camlline_node_value_t.Camlline_node_sub_8_value val_cav -> 
      Camlline_node_sub_8_value_v.string_off val_cav

  | Camlline_node_value_t.Camlline_node_sub_9_value val_cat -> 
      Camlline_node_sub_9_value_v.string_off val_cat
;;
