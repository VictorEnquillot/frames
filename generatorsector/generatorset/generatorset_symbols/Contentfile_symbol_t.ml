(** {3 The Symbol for a Content of a Camlfile}  *)

(** {6 Aliasing} *)

(** {6 Typing} *)

type contentfile_symbol = 
  | Type_alone
  | Type_n_value
  | Value_alone
;;
(**
There are three kinds of (Camlfile) Content :
- Type 
  contains only unconstrained camltype definitions

  its abbreviated as _t. in the name of the file
Example : atom_symbol_t.ml 

- Type_and_value
  contains constrained (private) camltype definitions

  its abbreviated as _p. in the name of the file
Example : ordinal_p.ml

- Value 
  contains only value (function) definitions

  its abbreviated as _v. in the name of the file
Example : atom_symbol_v.ml 

Remark I   : if a Camlfile Content is Type, the associated Value file exists.  

Remark II  : for each Camlfile Content the implementation and interface versions
            must exist.

Remark III : a Camlfile_symbol couples a Camlfileusage (implementation or interface)
             and a Camlfile Content. 
             Fact which is not explicited by the use of a ('*') in Camlfile_symbol 
             definition for theoretical reasons.
*)
