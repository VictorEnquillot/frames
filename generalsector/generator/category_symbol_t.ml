(** {3 The Symbol for an Entity Category of a Caml code for Frames}  *)

type category_symbol = 
  | Symbol_symbol           (* _s *)
  | Path_symbol             (* _p *)
  | Tag_symbol           (* _m *)
  | Formula_symbol          (* _f *)
  | Provider_symbol         (* _r for retrieve ? *)
  | Value_symbol            (* _v *)
  | Empty                   (* for external entity *)
;;
(** The category has one part
    Example : symbol 
      name                  is symbol 
      abbreviation_argument is smb
      abbreviation_module   is s
 *)
