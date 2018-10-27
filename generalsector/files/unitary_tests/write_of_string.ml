let write_of_string str =
  Format.fprintf Format.std_formatter
    "write_of_string:@. >%s<@." str;
;;


write_of_string "test";;


