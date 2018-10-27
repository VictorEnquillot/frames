(** {6 Printing.} *)

let print ppf smb_age =
  Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_age
;;


