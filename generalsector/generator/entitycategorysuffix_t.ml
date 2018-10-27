(** {3 The definition of an Entitycategorysuffix Triplet.}  *)

module Cfs_t = Codefile_suffix_t
module Cts_t = Category_symbol_t
module Ens_t = Entity_symbol_t
module Trp_t = Triplet_t

type entitycategorysuffix = (Ens_t.entity_symbol, Cts_t.category_symbol, Cfs_t.codefile_suffix) Trp_t.triplet 
;;
(** The same as target. 

   The entitycategorysuffix_proper has three parts
    Example : atom symbol t 
      name                  is atom_symbol_t 
      name_capitalized      is Atom_symbol_t
      abbreviation_module   is Ats_t

   The entitycategorysuffix_external has two parts
    Example : ordinal
      name                  is ordinal_p
      name_capitalized      is Ordinal_p
      abbreviation_module   is Ord_p

   The entitycategorysuffix_fictive has one part
    Example : string 
      name                  is string
      name_capitalized      is String
      abbreviation_module   is String

 *)

