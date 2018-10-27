(** {3 Content-Type for Mp3_frame} *)

type mp3_frame = {
    mp3_header_content : Mp3_header_content_t.mp3_header_content;
    mp3_data : Mp3_data_t.mp3_data;
  }
;;

(* type mp3_frame = Mp3_header_content_t.mp3_header * Mp3_data_t.mp3_data *)

