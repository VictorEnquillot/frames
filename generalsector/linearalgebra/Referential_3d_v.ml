let nam_mod = "Referential_v";;

(** {6 Making.} *)

let make ori bas = {
  Referential_3d_t.vpath = Vpath_t.vpath;
  Referential_3d_t.origin = ori;
  Referential_3d_t.basis = bas;
}
;;

(** {6 Transformations.} *)

let translation nam rrf vct = 
  let ori = rrf.Referential_3d_t.origin in
  let trn = Point_3d_v.translation nam ori vct in
  let bas = rrf.Referential_3d_t.basis in
  make trn bas 
;;

let rotation rrf eula =
 Utilities_v.not_yet_implemented "Referential_3d.rotation"
;;

(** {6 Converting.} *)

let print ppf rrf =
 Format.fprintf ppf "@[<hov>origin at %a basis %a@]" 
  Point_3d_v.print rrf.Referential_3d_t.origin
  Basis_3d_v.print rrf.Referential_3d_t.basis
;; 

let read ib =
 Utilities_v.not_yet_implemented "Referential.read"
;;

(** {6 Extracting.} *)
