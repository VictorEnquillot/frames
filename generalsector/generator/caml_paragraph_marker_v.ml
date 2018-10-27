(** {3 The functionalities for a Tag for a Caml_Paragraph.} *)

module Cps_v = Caml_paragraph_symbol_v
module Dbt_v = Doublet_v

(** {6 Making.} *)

let make smb_cpg dep_cpg =
  Dbt_v.make smb_cpg dep_cpg 
;;

