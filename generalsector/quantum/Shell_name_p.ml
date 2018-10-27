(** {3 Shell name} *)

(** {6 Types} *)

type shell_name = (Shell_ordinal_p.shell_ordinal, Shell_symmetry_t.shell_symmetry) Doublet_t.doublet;;
(** Efp shell name doublets shell_ordinal and shell_symmetry
    Type is private to ensure correctness between the two components. *)

(** {6 Making} *)

let shell_name qnl =
  let sho = Shell_ordinal_p.shell_ordinal_off_quantum_numbers_nl qnl in
  let smb_lsy = Quantum_numbers_p.shell_symmetry_off_quantum_numbers_nl qnl in
  (sho, smb_lsy)   
;;

let shell_name_of_int_of_int n l = (* to ensure correctness of doublet (n, l) *)
  let qnl = Quantum_numbers_p.quantum_numbers_nl_of_int_of_int n l in 
  shell_name qnl
;;

let shell_name_of_int_of_shell_symmetry n smb_lsy =
  let l = Shell_symmetry_v.int_of_shell_symmetry smb_lsy in
  shell_name_of_int_of_int n l
;;

let shell_name_of_ordinal_of_shell_symmetry ord smb_lsy =
  let n = Ordinal_p.int_of_ordinal ord in
  let l = Shell_symmetry_v.int_of_shell_symmetry smb_lsy in
  shell_name_of_int_of_int n l
;;

let shell_name_of_shell_ordinal_of_shell_symmetry sho smb_lsy =
  let n = Shell_ordinal_p.int_of_shell_ordinal sho in
  let l = Shell_symmetry_v.int_of_shell_symmetry smb_lsy in
  shell_name_of_int_of_int n l
;;

(** {6 Extracting} *)

let shell_ordinal_off_shell_name nam_she =
  Doublet_v.left_off_doublet nam_she 
;;

let ordinal_off_shell_name nam_she =
  let shl_o = shell_ordinal_off_shell_name nam_she in
  Shell_ordinal_p.ordinal_of_shell_ordinal shl_o
;;

let shell_symmetry_off_shell_name nam_she =
  Doublet_v.right_off_doublet nam_she 
;;

let index_off_shell_name nam_she =
  let ord = ordinal_off_shell_name nam_she in
  Ordinal_p.index_of_ordinal ord
;;

let quantum_number_n_off_shell_name nam_she =
  let sho = shell_ordinal_off_shell_name nam_she in 
  Shell_ordinal_p.quantum_number_n_off_shell_ordinal sho
;;

let quantum_number_l_off_shell_name nam_she =
  let smb_lsy = shell_symmetry_off_shell_name nam_she in
  Quantum_numbers_p.quantum_number_l_of_shell_symmetry smb_lsy
;;

let quantum_numbers_nl_off_shell_name nam_she =
  let q_n = quantum_number_n_off_shell_name nam_she in 
  let q_l = quantum_number_l_off_shell_name nam_she in
  Quantum_numbers_p.quantum_numbers_nl q_n q_l
;;

(** {6 Naming} *)

let name nam_she =
  let shl_o = shell_ordinal_off_shell_name nam_she in
  let smb_lsy = shell_symmetry_off_shell_name nam_she in
  Format.sprintf "%s%s"
    (Shell_ordinal_p.name shl_o)
    (Shell_symmetry_v.name smb_lsy)
;;

let string_off nam_she = "";;

let longname nam_she =
  (Format.sprintf "%s %s" (name nam_she) (string_off nam_she))
;;

let fullname nam_she = 
  (Format.sprintf "Shell_symmetry_t.%s" (longname nam_she))
;;

