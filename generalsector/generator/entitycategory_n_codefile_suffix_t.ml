(** {3 The definition of an Entitycategory_n_codefile_suffix Triplet.}  *)

module Enc_t = Entitycategory_t
module Msu_t = Codefile_suffix_t
module Dbt_t = Doublet_t

type entitycategory_n_codefile_suffix = (Enc_t.entitycategory, Msu_t.codefile_suffix) Dbt_t.doublet
(**
   Ex: 
       (Atom_symbol, t)
       (Error_message, v)
 *)

