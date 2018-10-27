(* $Id: Exp $ *)

open Make_test_v;;

testing "Provider_data_pdb_v";;

(* toplevel #use "tprovider_data_pdb_v.ml";; *)

let pri = Protein_identifier_t.Frames "gap" ;;

test_number 1 (
Provider_data_pdb_v.provide_file_name_extension pri
=
"pdb"
);;

test_number 2 (
Provider_data_pdb_v.provide_unix_path pri
=
 "../../databases/PDB/"
);;

test_number 3 (
Provider_data_pdb_v.provide_model_label ()
=
Model_recordpdb_symbol_t.Usual
);;

let pth_atm =
Path_t.Level
  ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
    Path_t.Web Path_t.W_elder),
   Path_t.Level
     ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail),
      Path_t.Spine
        ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Nh2pch,
          Path_t.Head),
         Path_t.Spine
           ((Path_t.Nterminal,
             Path_t.Nterminal_symbol
               ((Aminoacid_symbol_t.Pro,Protonation_state_t.Abs), Fragment_symbol_t.Nh2p),
             Path_t.Head),
            Path_t.Level
              ((Path_t.Polypeptide,
                Path_t.Polypeptide_symbol
                  {Polypeptide_symbol_t.identifier =
                   (Protein_identifier_t.Frames "pag",
                    Polypeptide_identifier_t.Chain_blank);
                   Polypeptide_symbol_t.nterminal_head = Fragment_symbol_t.Nh2p;
                   Polypeptide_symbol_t.cterminal = Fragment_symbol_t.Coom},
                Path_t.Can 0),
               Path_t.Level
                 ((Path_t.Protein,
                   Path_t.Protein_symbol (Protein_identifier_t.Frames "pag"),
                   Path_t.Can 0),
                  Path_t.Level
                    ((Path_t.System,
                      Path_t.System_symbol System_symbol_t.Sys_coffer_one_mole, Path_t.Can 0),
                     Path_t.Level
                       ((Path_t.Simulation,
                         Path_t.Simulation_symbol Simulation_symbol_t.Sim_nsys_coffer_one_mole,
                         Path_t.Can 0),
Path_t.Top "Test_Polypeptide_pag"))))))))
;;

test_number 4 (
Provider_data_pdb_v.provide_alternate_location_index pth_atm
=
Index_pdb_t.Alternate_blank
);;
