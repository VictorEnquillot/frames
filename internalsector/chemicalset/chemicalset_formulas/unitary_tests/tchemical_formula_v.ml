
let nam_cod = "Tchemical_formula";;;;
Tools_v.trace_module_name octr_ppf nam_cod;;
let nam_cod = nam_cod;;;;
Tools_v.trace_module_name octr_ppf nam_cod;;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

open Make_test_v;;

testing "Chemical_formula";;


let h2 = formula (h <-> h);;

let h2o = formula (o <-> h <-> h);;

let o2 = formula (o <=> o);;

let ch = formula (c <-> h);;
let c6h6 = formula (ch <=> ch <-> ch <=> ch <-> ch <=> ch);;

let benzene = formula (cycle c6h6);;

let benzene_spath = formula
  (cycle_spath
     (c6h6, Eps)
     (Level (3, Level (3, Level (3, Level (3, Level (3, Eps)))))))
;;

let pr_data = print_data Format.std_formatter;;

pr_data (h2o Path.Eps 0 [])
;;

pr_data (o2 Path.Eps 0 [])
;;

(** We may also define abbrevs such that atom followed by a numeral to mean several
 atoms. *)

 For instance: ["h2" = def "h <-> h"]

 [(C <=> O) <-> (O <-> H)]

