
(* lire 3 paramètres et les écrire *)

let ib = Scanf.Scanning.stdin;;
let (s1, s2, s3) = Scanf.bscanf Scanf.Scanning.stdin " %s %s %s" (fun s t u -> (s, t, u));;
Format.fprintf Format.err_formatter "lu : %s@.et : %s@.et : %s@."  s1 s2 s3;;

