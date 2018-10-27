(** {3 The Shell ordinal (shell_number n).} *)

let mod_nam = Management_v.local_module_name __LOC__;;

(** {6 Modules.} *)

type shell_ordinal = Ordinal_p.ordinal
;;
(** Cefp shell ordinal = [n] *)

(** {6 Making.} *)

let make ord = ord;;

let make_of_int i =
  Ordinal_p.make i
;;

let make_of_index idx =
  let o = Ordinal_p.ordinal_of_index idx in
  make o
;;

let shell_ordinal_off_quantum_numbers_nl qnl =
  let (q_n, q_l) = qnl in
  let ord = Quantum_numbers_p.ordinal_of_quantum_number_n q_n in
  make ord
;;

(** {6 Extracting.} *)

let ordinal_of_shell_ordinal ord_shl =
  ord_shl
;;

let int_of_shell_ordinal ord_shl =
  Ordinal_p.int_of_ordinal ord_shl
;;

let quantum_number_n_off_shell_ordinal ord_shl =
  let n = Ordinal_p.int_of_ordinal ord_shl in 
  Quantum_numbers_p.quantum_number_n_of_int n
;;

(** {6 Comparing.} *)

let compare ord_shl_1 ord_shl_2 =
  let i1 = int_of_shell_ordinal ord_shl_1 in
  let i2 = int_of_shell_ordinal ord_shl_2 in
 compare i1 i2
;;

(** {6 Converting.} *)

let print = Ordinal_p.print;;

let name = Ordinal_p.name;;

