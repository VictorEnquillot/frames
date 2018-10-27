(** {3 A Symbol for an HETATM field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#HETATM}
        http://www.wwpdb.org/documentation/format32/sect9.html#HETATM}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HETATM 8237 MG    MG A1001      13.872  -2.555 -29.045  1.00 27.36          MG 
 
HETATM 3835 FE   HEM A   1      17.140   3.115  15.066  1.00 14.14          FE
HETATM 8238  S   SO4 A2001      10.885 -15.746 -14.404  1.00 47.84           S  
HETATM 8239  O1  SO4 A2001      11.191 -14.833 -15.531  1.00 50.12           O  
HETATM 8240  O2  SO4 A2001       9.576 -16.338 -14.706  1.00 48.55           O  
HETATM 8241  O3  SO4 A2001      11.995 -16.703 -14.431  1.00 49.88           O  
HETATM 8242  O4  SO4 A2001      10.932 -15.073 -13.100  1.00 49.91           O  

*)

type hetatm_fieldpdb_symbol =
  | Hetatm_serial_number              (*  7-11 int *)
  | Empty_1                           (* 12-12 string *)
  | Hetatm_name                       (* 13-16 string *) 
  | Hetatm_alternate_location_id      (* 17-17 char *)
  | Hetatm_molecule_name              (* 18-20 string *)
  | Empty_2                           (* 21-21 string *)
  | Hetatm_chain_id                   (* 22-22 char *)
  | Hetatm_molecule_number            (* 23-26 int *)
  | Hetatm_insertion_code             (* 27-27 char *)
  | Empty_3                           (* 28-30 string *)
  | Hetatm_x                          (* 31-38 float *)
  | Hetatm_y                          (* 39-46 float *)
  | Hetatm_z                          (* 47-54 float *)
  | Hetatm_occupancy                  (* 55-60 float *)           
  | Hetatm_b_factor                   (* 61-66 string *)           
  | Empty_4                           (* 67-76 string *)
  | Hetatam_element_symbol            (* 77-78 string *)
  | Hetatm_charge                     (* 79-80 string *)
;;
