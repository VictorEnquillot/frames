(* $Id:  Exp $ *)

(** {3 Data Pdb repository.} *)

    The [keypdb] of an ATOM Record is the same as the [atom_pdb] [keypdb].  *)

(** {6 Header.} *)

let nam_cod = "Provider_recordpdb_atom_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

let register = Register_pdb_v.atom_pdb_by_keypdb;;
let register_name = "recordpdb_atom_by_keypdb";;

(** {6 Functions.} *)

let is_stored key_rcd =
  let here_ = "is_stored" in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf
      "@.@[<hov>%s.is_stored: at keypdb %a@]@." 
      nam_cod Keypdb_v.print key_rcd;
  let result =

  Hashtbl.mem register key_rcd

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.is_stored: result is %b@]@." 
      nam_cod  result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let store atm =
  let here_ = "store" in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf
    "@.@[<hov>%s.%s: keypdb %a@]@." 
    nam_cod 
    here_ 
    Keypdb_v.print (Atom_pdb_v.atom_partial_keypdb_of_atom_pdb atm);

  let key_rcd = Atom_pdb_v.atom_partial_keypdb_of_atom_pdb atm in
  if (is_stored key_rcd) then
    begin 
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.store:@ --- Fatal Error ---@.\
	atom_site has already been stored in register >%s< and should not.@.\
        at keypdb%a@]@."
        nam_cod register_name Keypdb_v.print key_rcd;
        assert false;
    end
  else begin
    Hashtbl.add register key_rcd atm;

    if not (is_stored key_rcd) then begin 
	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.store: --- Fatal Error ---@.\
          no such atom_site has been stored in register >%s< as it should be.@.\ 
	  at keypdb%a@.@]@." 
          nam_cod register_name Keypdb_v.print key_rcd;
          raise (Failure (nam_cod^".store: Not found"))
      end
    else
      begin
	Format.fprintf octr_ppf 
        "@.@[<hov>%s.store: Information:@.\
 	atom_site has been stored in register >%s<@.\
        at keypdb%a@]@."
        nam_cod register_name Keypdb_v.print key_rcd;
      end;
    end;
      Tools_v.exiting nam_cod here_ octr_ppf 
;; 

let retrieve key_rcd =
  let here_ = "retrieve" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: keypdb %a@]@." 
          nam_cod Keypdb_v.print key_rcd;

  let result =

  if is_stored key_rcd then Hashtbl.find register key_rcd
  else
      begin 
	Format.fprintf  (Format.err_formatter)
	  "@.@[<hov>%s.retrieve: --- Fatal Error ---@.\
          no atom_site has been stored in register >%s<@.\
	  at keypdb%a@.\
          possible cure : look at ....ml @]@." 
          nam_cod register_name Keypdb_v.print key_rcd ; 
          assert false;
      end
  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: result site of keypdb %a@]@." 
          nam_cod  Keypdb_v.print key_rcd;
      Tools_v.exiting nam_cod here_ octr_ppf ; 
  result
;;

let read key_rcd =
  let here_ = "read" in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

(* read all record from file *)
 
  in
  Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let read_and_store key_rcd =
 let here_ = "read_and_store" in Tools_v.entering nam_cod here_ octr_ppf ;
 Format.fprintf octr_ppf 
   "@.@[<hov>%s.read_and_store: keypdb %a@]@." 
   nam_cod Keypdb_v.print key_rcd;
 let result =

 let atm =
   
   read key_rcd 
     
 in
 store atm ; 
 atm
   
in
Tools_v.exiting nam_cod here_ octr_ppf ;
result
;;

let provide key_rcd =
  let here_ = "provide" in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf "@.@[<hov>%s.provide: keypdb %a@]@." 
    nam_cod Keypdb_v.print key_rcd;

  let result =

    if is_stored key_rcd then retrieve key_rcd
    else read_and_store key_rcd 

  in 
    Format.fprintf octr_ppf 
    "@.@[<hov>%s.%s: result %a@]@." 
    nam_cod here_ Atom_site_v.print result;
    Tools_v.exiting nam_cod here_ octr_ppf;
  result
;;


