(** {3 The Formula for a Page Willforge}  *)

(** {6 Aliasing} *)

module Pmh_t = Willforge_paragraph_hat_tag_t
module Pmt_t = Willforge_paragraph_tag_t
module Pmf_t = Willforge_paragraph_hat_tag_t
module Cft_t = Capped_footed_tree_t

(** {6 Typing} *)

type willforge_paragraph_hat_formula = (Pmh_t.willforge_paragraph_hat_tag, Pmt_t.willforge_paragraph_tag, Pmf_t.willforge_paragraph_hat_tag) Cft_t.capped_footed_tree
;;
(**
La formula indique quels Tags sont contenus dans une Page MediaWiki. 
Elle contient une entête (capped) du type Pmt_t.willforge_page_head_tag
Un arbre de paragraphes définis par les "= .. =" du type Pmt_t.willforge_paragraph_tag tree.
Un pied (hated) du type Pmt_t.willforge_paragraph_hat_tag.
*)
