(** {3 The Register of each Pack value by Pack Symbol of the Pdb} *)

let nam_cod = "Clusterpdb_data_register_v";;


(** {6 Definition.} *)

let clusterpdb_data_register : (Clusterpdb_keypdb_t.clusterpdb_keypdb, Clusterpdb_data_t.clusterpdb_data) Hashtbl.t = Hashtbl.create 137;;

let clear () =
  Hashtbl.clear clusterpdb_data_register 
;;

let clusterpdb_hkey_list () =
  Register_v.hkey_list clusterpdb_data_register;
;;

let clusterpdb_hvalue_list () =
  Register_v.hvalue_list clusterpdb_data_register;
;;

let clusterpdb_hentry_list () =
  Register_v.hentry_list clusterpdb_data_register;
;;

(** {6 Storing.} *)

let print_store_fatal_error nam sym_enp kyp_pkp str_rcp_l =
    Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
     @.While storing record :@.\
     >%s<@.\
     for Pdb entry >%s<.\      
     expecting no value yet stored at key >%s<.\      
     in register >clusterpdb_data_register<.\      
     cure : check input file and list of stored keys:@]@."
     nam_cod nam (List.hd str_rcp_l)  (Entrypdb_symbol_v.name sym_enp) (Clusterpdb_keypdb_v.name kyp_pkp);
     List_v.print Clusterpdb_keypdb_v.print Format.err_formatter (clusterpdb_hkey_list ());
;;

let store_of_entrypdb_symbol sym_enp =

  let store_or_fail e r k d =
    try Register_v.store r k d
    with Failure ("Already_stored:Register_v.store") ->
      print_store_fatal_error "store_of_entrypdb_symbol" e k d; 
      assert false;
  in
  
  let dat_pkp_l = 
    Entrypdb_data_v.clusterpdb_data_list_off_entrypdb_symbol 
      sym_enp in

  List.iter 
    (fun d -> store_or_fail
        sym_enp
	clusterpdb_data_register
	(Clusterpdb_data_v.clusterpdb_keypdb_off_clusterpdb_data d) 
	d
    )
    dat_pkp_l
;;

(** {6 Retrieving.} *)

let retrieve kyp_pkp =
  try Register_v.retrieve 
      clusterpdb_data_register 
      kyp_pkp 
  with Failure ("Not_stored:Register_v.retrieve") ->
    begin
      Format.fprintf 
      Format.err_formatter 
      "@.@[<hov>%s.%s: --- Fatal Error ---@.\
      expecting value for key >%s<.@.\
      in register >clusterpdb_data_register<.@.\
      cure : check list of stored keys:@]@."
      nam_cod "retrieve" (Clusterpdb_keypdb_v.name kyp_pkp);
      List_v.print Clusterpdb_keypdb_v.print Format.err_formatter (clusterpdb_hkey_list ());
      assert false;
    end
;;

