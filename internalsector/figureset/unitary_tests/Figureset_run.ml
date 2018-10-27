(** Run Figureset execuatble *)

let nam_mod = "Figureset_run.ml";;

(* Help *)

(* Read parameters *)

let deb_ref = ref "";;
let dom_ref = ref "";;

let opt_l = 
  [ 
    ("-debug", Arg.Set_string deb_ref, "module-name");
    ("-domain", Arg.Set_string dom_ref, "domain-name");
    ("-help", Arg.String (fun s -> ()), "options are : -domain -help");
  ]
;;
 
Arg.parse opt_l (fun s->()) "Usage : figureset_run.byt ";;

(* Local Domain tag *)

let nam_mod = !deb_ref;;
let nam_dom = !dom_ref;;

Format.fprintf Format.std_formatter "Domain is >%s<@." nam_dom;;

if nam_dom = ""
then 
  begin
  Format.fprintf Format.std_formatter 
    "Usage :@.  figureset_run.byt -domain domain-name [ -option <string> ] < input-file@.\
     Example :@.  figureset_run.byt -domain figure < triangle_perimeter.inp@."
  end
else
  begin
    let sym_dom = Domain_symbol_v.make nam_dom "" in
    let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom in 
    let soi_dom = Sole_index_v.make idx_dom [] in
    let tag_dom = Tag_v.make sym_dom soi_dom in
    
    let val_tar_l = Target_value_list_from_stdin_by_domain_tag_provider_v.provide tag_dom in 
    let prt_tar val_tar = Format.fprintf Format.std_formatter "%s@." (Target_value_v.as_string val_tar) in
    List.iter prt_tar val_tar_l 
  end
;;

(* Properties Calculations *)

let tag_tar_l = Domain_formula_v.target_tag_list_off_domain_tag tag_dom in

let pro_val_l = 
  List.map
    Figure_property_value_by_target_figureset_tag_provider_v.provide 
    tar_tag_l
;;

List.iter Figure_property_value_v.write pro_val_l;;
