(** {3 The Value for an Item in a Codefile.}  *)

module Cpv_t = Caml_paragraph_value_t
module Tre_t = Tree_t

type item_value = Cpv_t.caml_paragraph_value Tre_t.tree
;;
(** The value of an item is a Constructor tree list of the Codefile Entity
    indexed by the depth of the sub-constructors

                             (atom,1) 
           /                    |              \         
      (at_zt,2)              (at_ot,2)       (at_tw,2)
          /  |  \            /  | \  \
 (at_zt_rg,3)|   \  (at_ot_co,3)|  \  \
     (at_zt_an,3) \     (at_ot_do,3)\  \ 
         (at_zt_ca,3)       (at_ot_si,3)\    
                                (at_ot_tr,3)    


  Item_formula (of caml_paragraph_tag tree list)

                      | --- path of lowest constructor in paragraph
                      v
  Item_value   (of caml_paragraph_value tree list)

*)
