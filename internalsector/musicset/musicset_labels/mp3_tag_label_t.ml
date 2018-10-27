(** {3 Type for the Content of a Mp3 Header label} *)

type mp3_tag_label = (* 32 bits or 4 Characters *)
  | Mp3_tag_one_bit_label of Mp3_tag_one_bit_label_t.mp3_tag_one_bit_label
  | Id3v2_frame_specification_label of Id3v2_frame_specification_label_t.id3v2_frame_specification_label
  | Bit_rate
  | Sync
;;


