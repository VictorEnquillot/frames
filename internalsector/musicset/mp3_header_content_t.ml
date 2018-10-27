(** {3 Type for the Content of a Mp3 Header} *)
 
 
type mp3_header_content = {
    version : Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  error_protection :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  pad_bit :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  intensity_stereo :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  ms_stereo :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  private_bit :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  copy :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  original :  Mp3_tag_one_bit_symbol_t.mp3_tag_one_bit_symbol ;
  layer :  Id3v2_frame_specification_symbol_t.id3v2_frame_specification_symbol ;
  mode :  Id3v2_frame_specification_symbol_t.id3v2_frame_specification_symbol ;
  frequency :  Id3v2_frame_specification_symbol_t.id3v2_frame_specification_symbol ;
  emphasis :  Id3v2_frame_specification_symbol_t.id3v2_frame_specification_symbol ;
  bit_rate : Mp3_tag_symbol_t.mp3_tag_symbol ;
  sync : Mp3_tag_symbol_t.mp3_tag_symbol ;
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
