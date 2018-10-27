(** {3 Type for the Content of a Mp3 Header} *)

type one_bit = 
  | Version
  | Error_protection
  | Pad_bit
  | Intensity_stereo
  | MS_stereo
  | Private_bit
  | Copy 
  | Original
;;

type two_bits = 
  | Layer
  | Mode
  | Frequency
  | Emphasis
;;

type four_bits =
  | Bit_rate
;;

type twelve_bits = 
  | Sync
;;

type mp3_header = (* 32 bits or 4 Characters *)
  | One_bit of one_bit
  | Two_bits of two_bits
  | Four_bits of four_bits
  | Twelve_bits of twelve_bits
;;

type mp3_header_content = {
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
