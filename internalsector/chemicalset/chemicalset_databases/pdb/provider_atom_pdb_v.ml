(* $Id:  Exp $ *)

(** {6 Header.} *)

let nam_cod = "Provider_atom_pdb_t";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

let register = Register_pdb_v.atom_pdb_by_keypdb;;
let register_name = "atom_pdb_by_keypdb";;

(** {6 Functions.} *)

let is_stored key_atm =
  let here_ = "is_stored" in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf
      "@.@[<hov>%s.is_stored: at keypdb %a@]@." 
      nam_cod Keypdb_v.print key_atm;
  let result =

  Hashtbl.mem register key_atm

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

  let key_atm = Atom_pdb_v.atom_partial_keypdb_of_atom_pdb atm in
  if (is_stored key_atm) then
    begin 
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.store:@ --- Fatal Error ---@.\
	atom_site has already been stored in register >%s< and should not.@.\
        at keypdb%a@]@."
        nam_cod register_name Keypdb_v.print key_atm;
        assert false;
    end
  else begin
    Hashtbl.add register key_atm atm;

    if not (is_stored key_atm) then begin 
	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.store: --- Fatal Error ---@.\
          no such atom_site has been stored in register >%s< as it should be.@.\ 
	  at keypdb%a@.@]@." 
          nam_cod register_name Keypdb_v.print key_atm;
          raise (Failure (nam_cod^".store: Not found"))
      end
    else
      begin
	Format.fprintf octr_ppf 
        "@.@[<hov>%s.store: Information:@.\
 	atom_site has been stored in register >%s<@.\
        at keypdb%a@]@."
        nam_cod register_name Keypdb_v.print key_atm;
      end;
    end;
      Tools_v.exiting nam_cod here_ octr_ppf 
;; 

let retrieve key_atm =
  let here_ = "retrieve" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: keypdb %a@]@." 
          nam_cod Keypdb_v.print key_atm;

  let result =

  if is_stored key_atm then Hashtbl.find register key_atm
  else
      begin 
	Format.fprintf  (Format.err_formatter)
	  "@.@[<hov>%s.retrieve: --- Fatal Error ---@.\
          no atom_site has been stored in register >%s<@.\
	  at keypdb%a@.\
          possible cure : look at ....ml @]@." 
          nam_cod register_name Keypdb_v.print key_atm ; 
          assert false;
      end
  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: result site of keypdb %a@]@." 
          nam_cod  Keypdb_v.print key_atm;
      Tools_v.exiting nam_cod here_ octr_ppf ; 
  result
;;

let build key_atm =
  let here_ = "build" in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

    let key_rcd = key_atm in
    let arp = Provider_recordpdb_atom_v.provide key_rcd in
  
    Atom_pdb_v.atom_pdb_of_recordpdb_atom arp
 
  in
  Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let build_and_store key_atm =
 let here_ = "build_and_store" in Tools_v.entering nam_cod here_ octr_ppf ;
 Format.fprintf octr_ppf 
   "@.@[<hov>%s.build_and_store: keypdb %a@]@." 
   nam_cod Keypdb_v.print key_atm;
 let result =

 let atm =
   
   build key_atm 
     
 in
 store atm ; 
 atm
   
in
Tools_v.exiting nam_cod here_ octr_ppf ;
result
;;

let provide key_atm =
  let here_ = "provide" in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf "@.@[<hov>%s.provide: keypdb %a@]@." 
    nam_cod Keypdb_v.print key_atm;

  let result =

    if is_stored key_atm then retrieve key_atm
    else build_and_store key_atm 

  in 
    Format.fprintf octr_ppf 
    "@.@[<hov>%s.%s: result %a@]@." 
    nam_cod here_ Atom_pdb_v.print result;
    Tools_v.exiting nam_cod here_ octr_ppf;
  result
;;

(** {6 Specific.} *)

let provide_atom_pdb_position_by_keypdb key_pat =
  let pat = provide key_pat in
  (pat.Atom_pdb_t.atom_x_pdb, 
   pat.Atom_pdb_t.atom_y_pdb, 
   pat.Atom_pdb_t.atom_z_pdb) 
;;

let provide_atom_pdb_position_by_atom_path pth_atm =
  let key_pat = Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_atm in

  let result =

    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[<h>At %s Provider_atom_pdb_t.provide_atom_pdb_position_by_atom_path:@.\
    Information: getting position of atom with key_pat >%a<@.@]@."
   (Tools_v.string_time ()) 
    Atom_keypdb_v.print key_pat 
    ;

    provide_atom_pdb_position_by_keypdb  key_pat 

  in

    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[<h>At %s Provider_atom_pdb_t.provide_atom_pdb_position_by_keypdb:@.\
    Information: key_pat >%a< position >%a<@.@]@."
   (Tools_v.string_time ()) 
    Keypdb_v.print key_pat
    Particle_v.print_position result
    ;

  result
;;

