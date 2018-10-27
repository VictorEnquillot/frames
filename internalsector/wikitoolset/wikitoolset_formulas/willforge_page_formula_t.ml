(** {3 The Formula for a Page Willforge}  *)

(** {6 Aliasing} *)

module Pmht_t = Willforge_paragraph_hat_tag_t
module Pmst_t = Willforge_paragraph_section_tag_t
module Pmft_t = Willforge_paragraph_foot_tag_t
module Cft_t = Capped_footed_tree_t

(** {6 Typing} *)

type willforge_page_formula = (Pmht_t.willforge_paragraph_hat_tag, Pmst_t.willforge_paragraph_section_tag, Pmft_t.willforge_paragraph_foot_tag) Cft_t.capped_footed_tree
;;
(**
La formula indique quels Tags sont contenus dans une Page MediaWiki. 
Elle contient :
- une entête du type Pmt_t.willforge_paragraph_hat_tag
- un arbre de paragraphes du type Pmt_t.willforge_paragraph_section_tage
( définis par les "= .. =" ) 
- un pied (foot) du type Pmt_t.willforge_paragraph_foot_tag.

                          [ page ]
              /               |                 \
 [ paragraph_hat ] [ paragraph_section ] [ paragraph_foot ]  

*)
