(* $Id: register_pdbs.ml,v 1.10 2007-09-19 19:20:17 colonna Exp $ *)

let nam_cod = "Atom_register_pdb_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

let print_key = Keypdb_v.print 
;; 

let print_value = Atom_pdb_v.print 
;; 

let print_entry  ppf  ent =
  let (key, value) = ent in
  Format.fprintf ppf "entry >%a<@. %a"
    print_key key
    print_value value
;; 

let print ppf reg =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
    Format.fprintf ppf 
     "@.@[<h>content of register@ >%s< is:@]@." 
     nam;
    
  Hashtbl.iter (fun k v -> 
    Format.fprintf ppf "%a"  print_entry (k,v) )
    tbl
;;

let clear  reg = 
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl ;} = reg in
    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[At %s <h>Register_pdb_v.clear:@ \
    Information.@.\ 
    Register >%s< has been cleared.@]@."
   (Tools_v.string_time ())
    nam;
   Hashtbl.clear tbl ;
  {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl ;}
;;

let make_of_name reg_nam =
  let nam =
    match reg_nam with
    | "atom_pdb_by_keypdb" as nam -> nam
    | nam ->    
	Format.fprintf (Format.err_formatter) 
	"@.@[<hov>Atom_register_pdb_t.make_of_name:@.\
	Fatal Error.@.\
        Attempt to create a register of unknown name.@.\
        Incoming name is >%s<@.\
	Valid names are:@.\
        >atom_pdb_model_by_item_name<@.\
        >atom_pdb_by_keypdb<@]@."
      nam;
      assert false;
   in
   let tbl : (Atom_register_pdb_t.key, Atom_register_pdb_t.value) Hashtbl.t = 
     Hashtbl.create 137 in
   {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl ;}
;;

let atom_pdb_by_keypdb =
 let result =
  make_of_name "atom_pdb_by_keypdb" 
 in

    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[At %s <hov>Atom_pdb_v.atom_pdb_by_keypdb:@ \
    Information: Register >%s< has been made.@]@."
   (Tools_v.string_time ())
   "atom_pdb_by_keypdb";

 result
;;

let has_key reg key =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
  Hashtbl.mem tbl key 
;;

let entry_number reg =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
  Hashtbl.length tbl  
;;

let store register entry =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = register in
  let (key, value) = entry in
     Hashtbl.add  tbl  key  value;
  if not (has_key register key)
  then 
    begin 
      Format.fprintf (Format.err_formatter) 
	"@.@[<hov>Atom_pdb_registers.store:@ \
      Fatal Error: value for key@ >%a<@ \
      has not been correctly stored in Register@ >%s<@]@." 
      print_key key
      nam;
      assert false
    end
  else 
    begin
      Format.fprintf (Format.formatter_of_out_channel oc_trace) 
      "@.@[At %s <h>Atom_pdb_registers.store: Information:@.\
      Value for key@ >%a<@ has been correctly stored in Register@ >%s<@]@." 
     (Tools_v.string_time ())
      print_key key
      nam
    end
;;

let retrieve reg key =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in

  let value =
    if (has_key reg key) then  Hashtbl.find tbl key 
    else  begin 
      Format.fprintf (Format.err_formatter) 
      "@.@[<hov>Atom_pdb_registers.retrieve:@ \
      Fatal Error: at key@ >%a<@ \
      no value has not been retrieved from Register@ >%s<@]@." 
      print_key key
      nam;
      raise (Failure "Atom_register_pdb_t.retrieve: Not found")
    end
  in
    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[At %s <h>Atom_pdb_registers.retrieve: Information:@.\
    Register name >%s< Key >%a<@.Value retrieved:@ %a@]@." 
   (Tools_v.string_time ())
    nam
    print_key key
    print_value value;
    (key, value)
;;

let keys reg =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
  Tools_v.hkeys tbl
;;

let values reg =
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
  Tools_v.hvalues tbl
;;

let entries reg = 
  let {Atom_register_pdb_t.name = nam ; Atom_register_pdb_t.table = tbl} = reg in
  Tools_v.hentries tbl
;;

let entries_selected  reg  pred =
  List.filter pred (entries reg)  
;; 

let keys_selected  reg  pred =
  List.filter pred (keys reg)  
;; 

let values_selected  reg  pred =
  List.filter pred (values reg)  
;;

let print_entry_list ppf ent_l =
  List.iter (fun e ->
    Format.fprintf ppf "%a" print_entry  e) 
    ent_l
;;

let print_key_list ppf key_l =
  List.iter (fun k ->
    Format.fprintf ppf "@[%a@]@." print_key  k) 
    key_l
;;

let print_data_list ppf val_l =
  List.iter (fun v ->
    Format.fprintf ppf "%a" print_value  v) 
    val_l
;;

(* TAKEN_OUT
let print_key_and_nomen  ppf  key  pth =
  Format.fprintf ppf "@[<h>key >%a<@ path %a@]"
    Atom_keypdb_t.print  key 
    Path_v.print  pth
;; 
    
let print_key_and_description  ppf  key  desc =
  Format.fprintf ppf "@[<h>key %a@ description %a@]"
  Atom_keypdb_t.print  key 
  Atom_pdb_v.print_description  desc
;;
    
let print_path_and_description  ppf  pth  desc =
  Format.fprintf ppf "@[%a %a@]"
  Path_v.print  pth 
  Atom_pdb_v.print_description  desc
;;
    
let print_of_name  ppf  register_name_a =
  Format.fprintf ppf "\ncontent of register >%s< is:\n" register_name_a;
  (
      match register_name_a with
	| "atom_pdb_by_keypdb" ->
            Hashtbl.iter (fun k d -> 
	      Format.fprintf ppf 
                "@.@[<h>keypdb >%a<@.\
                description@.%a@]" 
		Atom_keypdb_t.print  k
		Atom_pdb_v.print_description  d  
			 ) 
	      atom_pdb_by_keypdb;

	| "register_atom_pdb_description_by_path" ->
            Hashtbl.iter (fun n d -> 
	      Format.fprintf ppf 
                "@.@[<h>path >%a<@.\
                description@.%a@]" 
		Path_v.print  n
		Atom_pdb_v.print_description  d  
			 ) 
	      register_atom_pdb_description_by_path;

(* TODO FIX
	| "register_file_name_pdb_by_nomen" ->
            Hashtbl.iter (fun pth fname -> 
	      Format.fprintf ppf "@[%a %a@]" 
		Path_v.print  pth
                File_format_t.print_name  fname ) 
	      register_file_name_pdb_by_nomen;
*)
	| s -> failwith (Printf.sprintf "Register_pdb_v.print: no such register name >%s<" s);

    );

  Format.fprintf ppf "\nend of content of register >%s<\n" register_name_a;
;;

TAKEN_OUT *)

let provide_data_by_key  store_all  reg  key =
(* check storage *)
  let key_exists = has_key reg key in
    
  if not key_exists then  store_all           (* build all values *) 
                                              (* store entries in register *)
  else ();
                                       
  let key_exists = has_key reg key in (* check storage has completed*)
    if not key_exists then begin
      Format.fprintf Format.err_formatter 
      "@[@.Register_pdb_v.provide_data_by_key:@.\
      Fatal Error.@.\
      Attempt to extract a value with an inexisting key@.\
      Expected key: >%a<@.\
      Actual keys of Register >%s< are:@.%a@.\
      Check ...@.@]@."
      print_key  key
      reg.Atom_register_pdb_t.name
      print_key_list (keys reg) ;
      assert false;
      end
    else
      let (key, value) =
	try retrieve reg key                    (* retrieve entry *)
	with Failure "Register_pdb_v.retrieve: Not found" ->
         begin
          Format.fprintf Format.err_formatter 
          "@[Register_pdb_v.retrieve:@.\
          Fatal Error.@.\
          Attempt to get inexisting value for an existing key@.\
          Actual key: >%a<@.\
          Register >%s<@.@]@"
          print_key key
	  reg.Atom_register_pdb_t.name;
          assert false
         end
    in
      value
;;

