let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:FFF_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:FFF_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:FFF_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file FFF_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:FFF_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
		  
	end
    | _ -> failwith s1
;;
