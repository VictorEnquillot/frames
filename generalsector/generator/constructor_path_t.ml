(** {3 The Constructor_path for a coCaml_line.}  *)

module Cnm_t = Constructor_tag_t

(** {6 Typing.} *)

type constructor_path = Cnm_t.constructor_tag list
;;
(** a constructor_path = [cm_bottom; cm_up; ...; cm_son; cm_top]

    cm_top is the constructor tag (cm) corresponding to the current entity 
           of the current module under construction.

    cm_bottom is constructor tag currently under treatement
    when traversing the cm path tree (it is at the bottom of the tree)

    cm_up is a constructor one level above cm_bottom 
    cm_down is a constructor one level below cm_bottom 

*)
