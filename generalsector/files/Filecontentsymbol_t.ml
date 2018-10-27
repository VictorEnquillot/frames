(** {3 A File Content Symbol as a Noslash String.} *)


type filecontentsymbol = Noslash_string_p.noslash_string
(** Example: "Benzene" or "4pti" or "6-31g**" 
             which are converted to Symbols by function read associated with
             any Symbol module. *)
