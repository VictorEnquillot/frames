(** {3 functionnalities for Type Mp3 Header Label} *)

let nam_cod = "mp3_tag_label_v.ml";;

(** {6 Upgrading} *) 

let mp3_tag_label_of_mp3_tag_one_bit_label lab_tob =
 Mp3_tag_one_bit_label_t.Mp3_tag_one_bit_label lab_tob 
;;

let mp3_tag_label_of_id3v2_frame_specification_label lab_tob =
 Id3v2_frame_specification_label_t.Two_bits lab_tob 
;;

(** {6 Abbreviating} *)

let bit_rate = Bit_rate ;;

let sync = Sync ;; 

(** {6 Making} *) 

let make str =
  let stl = String.lowercase str in
  match stl with
  | "bit_rate" -> Mp3_tag_label_t.Bit_rate
  | "sync" -> Mp3_tag_label_t.Sync
  | str ->
      let lab_tob = try
	Mp3_tag_one_bit_label_v.make str 
      with Failure _ -> 
	let lab_ttb = try
	  Id3v2_frame_specification_label_v.make str
	with Failure _ ->
	  failwith ("Illegal_string:"^nam_cod^":make")
	in   
	mp3_tag_label_of_id3v2_frame_specification_label lab_ttb
      in
      mp3_tag_label_of_mp3_tag_one_bit_label lab_tob
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
