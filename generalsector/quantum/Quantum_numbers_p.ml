(** {3 The 3 Quantum Numbers.} *)

let mod_nam = "Quantum_numbers_p";;

type quantum_number =
  | N of quantum_number_n
  | L of quantum_number_l
  | M of quantum_number_m
and quantum_number_n = Ordinal_p.ordinal (* from 1 to infinity *)
and quantum_number_l = Index_p.index     (* from 0 to n-1 *)
and quantum_number_m = int               (* from -l to l *)
;;
 
type quantum_numbers = {
    quantum_number_n : quantum_number_n;
    quantum_number_l : quantum_number_l;
    quantum_number_m : quantum_number_m;
  }
;;

type quantum_numbers_nl = quantum_number_n * quantum_number_l
;;

type quantum_numbers_ln = quantum_number_l * quantum_number_m
;;

type quantum_numbers_nlm = quantum_number_n * quantum_number_l * quantum_number_m

(** {6 Making.} *)

let quantum_numbers_n ord = ord;;

let quantum_number_n_of_int n =
  try Ordinal_p.ordinal n 
  with Failure "Ordinal_is_positive:quantum_numbers" ->
    Ordinal_p.fail_integer n mod_nam "quantum_numbers_n"
;;

let make_l idx = idx;;

let make_l_of_int l = 
  try Index_p.index l
  with Failure "Index_is_non_negative:quantum_numbers" ->
    Index_p.fail_integer l mod_nam "quantum_numbers_quantum_number_i"
;;

let quantum_numbers_m m = m;;

let quantum_numbers_m_of_int m = m;;

let quantum_number_n_of_int = quantum_number_n_of_int;;

let quantum_number_l_of_int = make_l_of_int;;

let quantum_number_m_of_int = quantum_numbers_m_of_int;;

let int_of_quantum_number_n q_n =
  Ordinal_p.int_of_ordinal q_n
;;

let int_of_quantum_number_l q_l =
  Index_p.int_of_index q_l
;;

let int_of_quantum_number_m q_m =
   q_m
;;

let int_triplet_of_quantum_numbers qns =
  let q_n = qns.quantum_number_n in
  let q_l = qns.quantum_number_l in
  let q_m = qns.quantum_number_m in
  let n = int_of_quantum_number_n q_n in
  let l = int_of_quantum_number_l q_l in
  let m = int_of_quantum_number_m q_m in
  (n, l, m)
;;

let ordinal_of_quantum_number_n q_n =
  q_n
;;

let index_of_quantum_number_l q_l =
  q_l
;;

let index_of_quantum_number_m_by_quantum_number_l q_m q_l =
  let l = int_of_quantum_number_l q_l in
  let m = int_of_quantum_number_m q_m in
  Index_p.index (m + l)
;;

let fail_l_and_n l n mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting quantum number l < n (n = %i) \
    and found l = %i@]@." mdn her n l;
    assert false;
;;

let fail_m_and_ml m l mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting quantum number m (=%i) >= -l (=%i)@]@."  
   mdn her m (- l);
   assert false;
;;

let fail_m_and_l m l mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting quantum number m <= l (l = %i) \
    and found m = %i@]@." mdn her l m;
   assert false;
 ;;

let quantum_numbers_nl_of_int_of_int  n l =
  if (l >= n) then fail_l_and_n l n mod_nam "quantum_numbers_nl"
  else (quantum_number_n_of_int n, make_l_of_int l)
;;

let quantum_numbers_nl q_n q_l =
  let n = int_of_quantum_number_n q_n in
  let l = int_of_quantum_number_l q_l in
  quantum_numbers_nl_of_int_of_int n l
;;

let make_lm_of_int_of_int l m =
  if (m < -l) then fail_m_and_ml m l mod_nam "quantum_numbers_ln"
  else if (m > l) then fail_m_and_l m l mod_nam "quantum_numbers_ln"
  else (make_l_of_int l, quantum_numbers_m_of_int m)
;;

let quantum_numbers_ln q_l q_m =
  let l = int_of_quantum_number_l q_l in
  let m = int_of_quantum_number_m q_m in
  make_lm_of_int_of_int l m
;;

let quantum_numbers_of_int_of_int_of_int n l m =
  if (l > n-1) then fail_l_and_n l n mod_nam "quantum_numbers"
  else if (m < -l) then fail_m_and_ml m l mod_nam "quantum_numbers"
  else if (m > l) then fail_m_and_l m l mod_nam "quantum_numbers"
  else {
    quantum_number_n = quantum_number_n_of_int n;
    quantum_number_l = make_l_of_int l;
    quantum_number_m = quantum_numbers_m_of_int m;
  }
;;

let quantum_numbers_of_int_triplet (n, l, m) =
  quantum_numbers_of_int_of_int_of_int n l m
;;

let quantum_numbers q_n q_l q_m =
  let n = int_of_quantum_number_n q_n in
  let l = int_of_quantum_number_l q_l in
  let m = int_of_quantum_number_m q_m in
  quantum_numbers_of_int_of_int_of_int n l m
;;


(** {3 The 3 Quantum Numbers n l m.} *)

(** {3 Quantum Number Functions.} *)

let quantum_number_n_off_quantum_numbers qns =
  qns.quantum_number_n
;;

let quantum_number_n_off_quantum_numbers_nl q_l =
  let (n, l) = q_l in
  n 
;;

let quantum_number_l_off_quantum_numbers qns =
  qns.quantum_number_l
;;

let quantum_number_l_off_quantum_numbers_nl q_l =
  let (n, l) = q_l in
  l
;;

let quantum_number_l_off_make_lm qlm =
  let (l, m) = qlm in
  l
;;

let shell_symmetry_off_quantum_numbers_nl qnl =
  let (_, q_l) = qnl in
  let l = int_of_quantum_number_l q_l in
  Shell_symmetry_v.make l
;;

let shell_symmetry_of_quantum_number_l q_l =
  let i = int_of_quantum_number_l q_l in
  Shell_symmetry_v.make_of_int i
;;

let quantum_number_l_of_shell_symmetry smb_lsy = 
  let i = Shell_symmetry_v.int_of_shell_symmetry smb_lsy in
    make_l_of_int i
;;

let quantum_number_l_array_of_quantum_number_n q_n =
  let n = Ordinal_p.int_of_ordinal q_n in
  Array.init n 
    (fun i -> make_l_of_int i)   
;;

let quantum_number_m_off_quantum_numbers qns =
  qns.quantum_number_m
;;

let quantum_number_m_off_make_lm qlm =
  let (l, m) = qlm in
  m
;;

let quantum_number_m_array_of_quantum_number_l q_l =
  let l = int_of_quantum_number_l q_l in
  Array.init ((2 * l) + 1) 
    (fun i -> quantum_numbers_m_of_int (i - l) )   
;;

let quantum_number_m_array_of_shell_symmetry smb_lsy =
  let qnl = quantum_number_l_of_shell_symmetry smb_lsy in
  quantum_number_m_array_of_quantum_number_l qnl 
;;

let make_lm_array_of_quantum_number_l q_l =
  let q_m_a = quantum_number_m_array_of_quantum_number_l q_l in
  Array.map 
    (fun q_m -> (q_l, q_m) ) 
    q_m_a
;;

let quantum_numbers_array_of_quantum_numbers_nl q_nl =
  let q_n = quantum_number_n_off_quantum_numbers_nl q_nl in
  let q_l = quantum_number_l_off_quantum_numbers_nl q_nl in
  let q_m_a = quantum_number_m_array_of_quantum_number_l q_l in
  Array.map 
    (fun q_m -> quantum_numbers q_n q_l q_m) 
    q_m_a
;;

let quantum_numbers_nl_off_quantum_numbers qns =
  let q_n = quantum_number_n_off_quantum_numbers qns in
  let q_l = quantum_number_l_off_quantum_numbers qns in
  (q_n, q_l)
;;

let make_lm_off_quantum_numbers qns =
  let q_l = quantum_number_l_off_quantum_numbers qns in
  let q_m = quantum_number_m_off_quantum_numbers qns in
  (q_l, q_m)
;;

let print_n ppf n =
  Format.fprintf ppf "%a" 
  Ordinal_p.print n
;;

let print_l ppf l =
  Format.fprintf ppf "%a" 
  Index_p.print l
;;

let print_m ppf m =
  Format.fprintf ppf "%i" 
  m
;;

let print_lm ppf qlm =
  let l = quantum_number_l_off_make_lm qlm in
  let m = quantum_number_m_off_make_lm qlm in

  Format.fprintf ppf "(l = %a, m = %a)" 
    print_l l
    print_m m
;;

let print ppf qns =
  let q_n = quantum_number_n_off_quantum_numbers qns in
  let q_l = quantum_number_l_off_quantum_numbers qns in
  let q_m = quantum_number_m_off_quantum_numbers qns in

  Format.fprintf ppf "{n = %a; l = %a; m = %a}" 
    print_n q_n
    print_l q_l
    print_m q_m
;;

let name_n q_n  =
  let n = int_of_quantum_number_n q_n in
  Format.sprintf "%i" n
;;

let name_l q_l  =
  let l = int_of_quantum_number_l q_l in
  Format.sprintf "%i" l
;;

let name_m q_m  =
  let m = int_of_quantum_number_m q_m in
  Format.sprintf "%i" m
;;

let name_lm qlm  =
  let q_l = quantum_number_l_off_make_lm qlm in
  let q_m = quantum_number_m_off_make_lm qlm in
  Format.sprintf  "%s_%s" (name_l q_l) (name_m q_m)
;;

let name qns  =
  let (n, l, m) = int_triplet_of_quantum_numbers qns in
  Format.sprintf "%i_%i_%i" n l m 
;;
