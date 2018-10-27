(** {3 Camlline_constant_pervasive_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_constant_pervasive_value_v";
   "Needed-by : VGNR:Camlline_constant_pervasive_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 Making.} *)

let make sym_ccp soi_cal =
  match sym_ccp with
  | Camlline_constant_pervasive_symbol_t.Basic_type -> 
      Utilities_v.not_yet_implemented nam_cod 
	"make_constant_pervasive Basic_type"

  | Camlline_constant_pervasive_symbol_t.Begin_line ->
      Camlline_constant_pervasive_value_t.Begin_line     "    begin" 

  | Camlline_constant_pervasive_symbol_t.Item_title ->
      let sym_ite = Generatorset_symbol_by_sole_index_provider_v.item_symbol_off_sole_index soi_cal in
      let nam_ite = Item_symbol_v.name sym_ite in
      let str = Format.sprintf "(** {6 %s} *)" (String.capitalize nam_ite) in
      Camlline_constant_pervasive_value_t.Item_title str
  
  | Camlline_constant_pervasive_symbol_t.Double_semicolon ->
    Camlline_constant_pervasive_value_t.Double_semicolon  ";;" 
  | Camlline_constant_pervasive_symbol_t.Else_line ->
    Camlline_constant_pervasive_value_t.Else_line            "  else" 
  | Camlline_constant_pervasive_symbol_t.Empty_line ->
    Camlline_constant_pervasive_value_t.Empty_line           "" 
  | Camlline_constant_pervasive_symbol_t.End_line ->
    Camlline_constant_pervasive_value_t.End_line             "    end" 
  | Camlline_constant_pervasive_symbol_t.Then_false ->
    Camlline_constant_pervasive_value_t.Then_false           "  then false" 
  | Camlline_constant_pervasive_symbol_t.Semicolon ->
    Camlline_constant_pervasive_value_t.Semicolon            ";"
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right ->
    Camlline_constant_pervasive_value_t.Parenthesis_right    ")"
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left ->
    Camlline_constant_pervasive_value_t.Parenthesis_left     "("
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right ->
    Camlline_constant_pervasive_value_t.Curly_bracket_right  "}"
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left ->
    Camlline_constant_pervasive_value_t.Curly_bracket_left   "{"
  | Camlline_constant_pervasive_symbol_t.Bracket_right ->
    Camlline_constant_pervasive_value_t.Bracket_right        "]"
  | Camlline_constant_pervasive_symbol_t.Bracket_left ->
    Camlline_constant_pervasive_value_t.Bracket_left         "["
;;

(** {6 Retrieving} *)

let retrieve tag_ccp =
  let sym_ccp = Tag_v.entity_off_tag tag_ccp in
  let soi_cal = Tag_v.sole_index_off_tag tag_ccp in
  make sym_ccp soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccp =
  match val_ccp with
  | Camlline_constant_pervasive_value_t.Basic_type str -> str 
  | Camlline_constant_pervasive_value_t.Begin_line str -> str
  | Camlline_constant_pervasive_value_t.Item_title str -> str
  | Camlline_constant_pervasive_value_t.Double_semicolon str -> str
  | Camlline_constant_pervasive_value_t.Else_line str -> str
  | Camlline_constant_pervasive_value_t.Empty_line str -> str
  | Camlline_constant_pervasive_value_t.End_line str -> str
  | Camlline_constant_pervasive_value_t.Then_false str -> str
  | Camlline_constant_pervasive_value_t.Semicolon str -> str
  | Camlline_constant_pervasive_value_t.Parenthesis_right str -> str
  | Camlline_constant_pervasive_value_t.Parenthesis_left str -> str
  | Camlline_constant_pervasive_value_t.Curly_bracket_right str -> str
  | Camlline_constant_pervasive_value_t.Curly_bracket_left str -> str
  | Camlline_constant_pervasive_value_t.Bracket_right str -> str
  | Camlline_constant_pervasive_value_t.Bracket_left str -> str

;;

