(** {3 The Entitycategorycodefile_path for a coCaml_line.}  *)

module Ecm_t = Entitycategorycodefile_tag_t

(** {6 Typing.} *)

type entitycategorycodefile_path = Ecm_t.entitycategorycodefile_tag list
;;
(** a entitycategorycodefile_path = [cm_bottom; cm_up; ...; cm_son; cm_top]

    cm_top is the entitycategorycodefile tag (cm) corresponding to the current entity 
           of the current module under construction.

    cm_bottom is entitycategorycodefile tag currently under treatement
    when traversing the cm path tree (it is at the bottom of the tree)

    cm_up is a entitycategorycodefile one level above cm_bottom 
    cm_down is a entitycategorycodefile one level below cm_bottom 

*)
