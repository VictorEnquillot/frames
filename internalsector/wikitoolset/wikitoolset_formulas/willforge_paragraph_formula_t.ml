(** {3 The Formula for a Paragraph Willforge}  *)

(** {6 Aliasing} *)

module Mpff_t = Willforge_paragraph_foot_formula_t
module Mphf_t = Willforge_paragraph_hat_formula_t
module Mpsf_t = Willforge_paragraph_section_formula_t

(** {6 Typing} *)

type willforge_paragraph_formula = 
  | Willforge_paragraph_foot_formula of Mpff_t.willforge_paragraph_foot_formula
  | Willforge_paragraph_hat_formula of Mphf_t.willforge_paragraph_hat_formula
  | Willforge_paragraph_section_formula of Mpsf_t.willforge_paragraph_section_formula
;;
(**
C'est une Formula d'une Paragraph MediaWiki. 
Elle contient une entête (capped) du type Pmt_t.willforge_paragraph_tag
Un arbre de paragraphes définis par les "= .. =" du type Pmt_t.willforge_paragraph_tag tree.
Un pied (footed) du type Pmt_t.willforge_paragraph_tag.
*)
