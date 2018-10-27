(** {3 The Definition of an Entitycategory.}  *)

module Cts_t = Category_symbol_t
module Ens_t = Entity_symbol_t
module Dbt_t = Doublet_t

type entitycategory = (Ens_t.entity_symbol, Cts_t.category_symbol) Dbt_t.doublet 
;;
(** The entitycategory proper has two parts
    Example : atom and symbol 
      name                  is atom_symbol 
      name_capitalized      is Atom_symbol
      abbreviation_argument is smb_atm
      abbreviation_module   is Ats

    The entitycategory fictive is entity_fictive_symbol
    The entitycategory external is entity_external_symbol
 *)

