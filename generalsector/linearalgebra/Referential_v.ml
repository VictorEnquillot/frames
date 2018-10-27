
let nam_mod = "Referential_v";;


(** {6 Making.} *)

let make pnt bas = {
  Referential_t.origin = pnt;
  Referential_t.basis = bas;
 }
;;

let read ib =
 Utilities_v.not_yet_implemented nam_mod "read"
;;

(** {6 Transforming.} *)

let translation rft vct = 
  let ori = rft.Referential_t.origin in
  let trn = Point_v.translation ori vct in
  let bas = rft.Referential_t.basis in
  make trn bas
;;

let rotation rft eula = 
 Utilities_v.not_yet_implemented nam_mod "rotation"
;;

(** {6 Converting.} *)

let name rft =
 Format.sprintf "@[<hov>origin at %s basis vectors : %s@]" 
  (Point_v.name rft.Referential_t.origin)
  (Basis_v.name rft.Referential_t.basis)
;; 

