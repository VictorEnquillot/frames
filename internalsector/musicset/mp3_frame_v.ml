(** {3 Functionalities for a Content-Type for Mp3_frame} *)

let make mp3_hea mp3_dat = {
  Mp3_header_content_t.mp3_header_content = mp3_hea;
  Mp3_data_t.mp3_data = mp3_dat;
}
;;


