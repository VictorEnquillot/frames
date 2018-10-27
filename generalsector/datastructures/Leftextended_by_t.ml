(** {3 A Type leftextended by the same other type.} *)


type ('x, 'b) leftextended_by = ('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;
(** It is a Booted_repeated_list which extends leftwards 
    a basic element b of type 'b 
    by any repetition of the same extension x of type 'x 
    It is a Booted_list constrained to have all 'x values equal

    TODO should be private.
*)
