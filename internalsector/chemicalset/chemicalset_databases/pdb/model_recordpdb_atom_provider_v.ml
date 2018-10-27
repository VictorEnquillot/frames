(* $Id:  Exp $ *)

let nam_cod = "Model_recordpdb_atom_provider_t";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;
let register = Register_pdb_v.atom_pdb_by_atom_keypdb;;
let register_name = "atom_pdb_by_atom_keypdb";;

let is_stored key_mdl =
  let here_ = "is_stored" in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf
      "@.@[<hov>%s.is_stored: at path %a@]@." 
      nam_cod Atom_keypdb_v.print key_mdl;
  let result =

  Hashtbl.mem register key_mdl

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.is_stored: result is %b@]@." 
      nam_cod  result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let store mdl =
  let here_ = "store" in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf
    "@.@[<hov>%s.%s: path %a@]@." 
    nam_cod 
    here_ 
    Atom_keypdb_v.print (Atom_pdb_v.atom_keypdb_of_atom_pdb mdl);

  let key_mdl = Atom_pdb_v.atom_keypdb_of_atom_pdb mdl in
  if (is_stored key_mdl) then
    begin 
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.store:@ --- Fatal Error ---@.\
	atom_site has already been stored in register >%s< and should not.@.\
        at path%a@]@."
        nam_cod register_name Atom_keypdb_v.print key_mdl;
        assert false;
    end
  else begin
    Hashtbl.add register key_mdl mdl;

    if not (is_stored key_mdl) then begin 
	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.store: --- Fatal Error ---@.\
          no such atom_site has been stored in register >%s< as it should be.@.\ 
	  at path%a@.@]@." 
          nam_cod register_name Atom_keypdb_v.print key_mdl;
          raise (Failure (nam_cod^".store: Not found"))
      end
    else
      begin
	Format.fprintf octr_ppf 
        "@.@[<hov>%s.store: Information:@.\
 	atom_site has been stored in register >%s<@.\
        at path%a@]@."
        nam_cod register_name Atom_keypdb_v.print key_mdl;
      end;
    end;
      Tools_v.exiting nam_cod here_ octr_ppf 
;; 

let retrieve key_mdl =
  let here_ = "retrieve" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: path %a@]@." 
          nam_cod Atom_keypdb_v.print key_mdl;

  let result =

  if is_stored key_mdl then Hashtbl.find register key_mdl
  else
      begin 
	Format.fprintf  (Format.err_formatter)
	  "@.@[<hov>%s.retrieve: --- Fatal Error ---@.\
          no atom_site has been stored in register >%s<@.\
	  at path%a@.\
          possible cure : look at ....ml @]@." 
          nam_cod register_name Atom_keypdb_v.print key_mdl ; 
          assert false;
      end
  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.retrieve: result site of path %a@]@." 
          nam_cod  Atom_keypdb_v.print key_mdl;
      Tools_v.exiting nam_cod here_ octr_ppf ; 
  result
;;

let build key_mdl =
  let here_ = "build" in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

   Atom_site_v.make_atom_site key_mdl 
 
  in
  Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let build_and_store key_mdl =
 let here_ = "build_and_store" in Tools_v.entering nam_cod here_ octr_ppf ;
 Format.fprintf octr_ppf 
   "@.@[<hov>%s.build_and_store: path %a@]@." 
   nam_cod Atom_keypdb_v.print key_mdl;
 let result =

 let mdl =
   
   build key_mdl 
     
 in
 store mdl ; 
 mdl
   
in
Tools_v.exiting nam_cod here_ octr_ppf ;
result
;;

let provide key_mdl =
  let here_ = "provide" in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf "@.@[<hov>%s.provide: path %a@]@." 
    nam_cod Atom_keypdb_v.print key_mdl;

  let result =

    if is_stored key_mdl then retrieve key_mdl
    else build_and_store key_mdl 

  in 
    Format.fprintf octr_ppf 
    "@.@[<hov>%s.%s: result %a@]@." 
    nam_cod here_ Atom_site_v.print result;
    Tools_v.exiting nam_cod here_ octr_ppf;
  result
;;

