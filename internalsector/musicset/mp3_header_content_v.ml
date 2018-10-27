(** {3 Type for the Content of a Mp3 Header} *)

let nam_cod = "mp3_header_content_v.ml";;

let make = 
Utils_v.not_yet_implemented nam_cod "make"
(*
  version : one_bit ;
  error_protection : one_bit ;
  pad_bit : one_bit ;
  intensity_stereo : one_bit ;
  ms_stereo : one_bit ;
  private_bit : one_bit ;
  copy : one_bit ;
  original : one_bit ;
  layer : two_bits ;
  mode : two_bits ;
  frequency : two_bits ;
  emphasis : two_bits ;
  bit_rate : four_bits ;
  sync : twelve_bits ;
  }
*)
;;

(**
Sync             12 bits    1-12
Version           1 bit    13-13
Layer             2 bits
Error_protection  1 bit
Bit_rate          4 bit
Frequency         2 bits
Pad_bit           1 bit
Private_bit       1 bit
Mode              2 bits
Mode extension 
     Intensity stereo  1 bits
     MS        stereo  1 bits
Copy              1 bit
Original          1 bit
Emphasis          2 bits  30-32
*)
