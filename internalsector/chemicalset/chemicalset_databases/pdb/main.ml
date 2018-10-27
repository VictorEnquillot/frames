(* $Id: main.ml,v 1.3 2007-06-01 08:02:23 weis Exp $ *)

(** The pdb generator of Caml files to describe and handle the pdb. *)

open Mode_flags;;

let ifname, ofname = ref "", ref "";;

;;

let add_open_directive b modname =
  Printf.bprintf b "open %s;;\n\n" modname
;;

let gen_mli_file ifname ofname =
  let ib = Scanf.Scanning.from_file ifname in
  let oc = open_out ofname in
  let b = Buffer.create 4096 in
  Buffer.add_string b
    "(* This file has been generated by genmlic. *)\
   \n\
   \n(* Do not edit! *)\
   \n";
  begin match Mode_flags.get_spec_mode () with
  | Mode_flags.Single_type ->
    let spec = Pdb_parse_spec.parse_pdb_single_type_definition ib in
    Pdb_print_spec.add_pdb_single_spec b spec;
  | Mode_flags.Multi_type ->
    let spec = Pdb_parse_spec.parse_pdb_multi_type_definition ib in
    Pdb_print_spec.add_pdb_multi_spec b spec end;
  Buffer.output_buffer oc b;
  Buffer.reset b;
  close_out oc;
;;

let main () =
  Arg.parse [
   "-i", Arg.String (fun s -> ifname := s), "input file name";
   "-o", Arg.String (fun s -> ofname := s), "output file name";
   "-m", Arg.Unit Mode_flags.set_multi_mode,
     "parse a multi type specification (the default)";
   "--multi", Arg.Unit set_multi_mode,
     "parse a multi type specification (the default)";
   "-s", Arg.Unit set_single_mode, "parse a single type specification";
   "--single", Arg.Unit set_single_mode, "parse a single type specification";
   "-d", Arg.Unit set_debug_mode, "turn on debug mode";
   "--debug", Arg.Unit set_debug_mode, "turn on debug mode";
  ]
  (fun s -> prerr_endline "Need an input and an output file."; exit 2)
  "Usage: genmlic <options> -i ifname -o ofname";
  gen_mli_file !ifname !ofname
;;

Printexc.print main ();;
