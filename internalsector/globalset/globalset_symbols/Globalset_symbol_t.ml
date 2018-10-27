(** {3 Globalset_symbol_t}  *)

(**
   Globalset is the Root of the Frames Constructor Tree
   Any Entity E of of Localset Lset and category cat is defined as 
   Globalset_category (Lset_cat_t.Lset_cat (E_cat_t.E_cat e))
*)

(** {6 Typing} *)

type globalset_symbol =
  | Chemicalset_symbol of Chemicalset_symbol_t.chemicalset_symbol
  | Figureset_symbol of Figureset_symbol_t.figureset_symbol
  | Generatorset_symbol of Generatorset_symbol_t.generatorset_symbol
  | Musicset_symbol of Musicset_symbol_t.musicset_symbol
;;
(** All Frames Localset *)
