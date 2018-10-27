(** {3 The Symbol for a Paragraph Willforge}  *)

(** {6 Aliasing} *)

module Wpff_t = Willforge_paragraph_foot_symbol_t
module Wphf_t = Willforge_paragraph_hat_symbol_t
module Wpsf_t = Willforge_paragraph_section_symbol_t

(** {6 Typing} *)

type willforge_paragraph_symbol = 
  | Willforge_paragraph_foot_symbol of Wpff_t.willforge_paragraph_foot_symbol
  | Willforge_paragraph_hat_symbol of Wphf_t.willforge_paragraph_hat_symbol
  | Willforge_paragraph_section_symbol of Wpsf_t.willforge_paragraph_section_symbol
;;
(**
C'est une Symbol d'une Paragraph MediaWiki. 
Elle contient une entête (capped) du type Pmt_t.willforge_paragraph_tag
Un arbre de paragraphes définis par les "= .. =" du type Pmt_t.willforge_paragraph_tag tree.
Un pied (footed) du type Pmt_t.willforge_paragraph_tag.
*)
