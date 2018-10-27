(** {3 Functionalities for a Sys} *)


let existing_file = Sys.file_exists;;

let operating_system = Sys.os_type;;

let remove_file = Sys.remove;;

let value_of_variable = Sys.getenv;;

let command_execut = Sys.command;;

let list_files = Sys.readdir;;

let rename_file = Sys.rename;;
