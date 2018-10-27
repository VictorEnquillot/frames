(***********************************************************************)
(*                                                                     *)
(*                           Caml                                      *)
(*                                                                     *)
(*            Pierre Weis, projet Cristal, INRIA Rocquencourt          *)
(*                                                                     *)
(*  Copyright 2005 Institut National de Recherche en Informatique      *)
(*  et en Automatique. Distributed only by permission.                 *)
(*                                                                     *)
(***********************************************************************)

(* Test numbering from 1 to n by FCC 21th december 2011 *)

(* To automatically test functions. *)

(* Auxilliaries. *)

let module_name = ref "";;

let all_tests_ok = ref true;;

let initial_test_number = 0;;

let local_test_num, global_test_num =
  ref initial_test_number, ref initial_test_number
;;

let testing modname =
  module_name := modname;
  prerr_endline ("\nTesting " ^ modname);
  local_test_num := initial_test_number;
;;

let fail () =
  failwith "\n\n************** Test suit failed ************\n\n"
;;

let finish () =
  testing "results:";
  let glb_num = !global_test_num in
  if glb_num < 1 
  then
    begin
    prerr_endline
      (Printf.sprintf "Fatal Error Total: %i tests performed." glb_num);
       assert false
    end
  else
    begin
      let print_tests_performed () =
	prerr_endline
	  (Printf.sprintf "Total: %i tests performed." glb_num) in
      print_tests_performed ();
      match !all_tests_ok with
      | true -> prerr_endline "\n\nAll tests succeeded.\n"
      | _ -> fail ()
    end
;;

at_exit finish;;

let print_test_number () =
  print_int !local_test_num; print_string " "; flush stdout;
;;

let next_test () =
 incr global_test_num;
 incr local_test_num;
 print_test_number ();
;;

let print_test_fail () =
  all_tests_ok := false;
  prerr_endline
   (Printf.sprintf
      "\n\n********* %s   Test number %i failed ***********"
      !module_name !local_test_num);
  fail ();
;;

let print_failure_test_fail () =
  all_tests_ok := false;
  prerr_endline
   (Printf.sprintf
      "\n\n********* %s   Failure Test number %i incorrectly failed ***********"
      !module_name !local_test_num);
  fail ();
;;

let print_failure_test_succeed () =
  all_tests_ok := false;
  prerr_endline
   (Printf.sprintf
      "\n\n********* %s   Failure Test number %i failed to fail ***********"
      !module_name !local_test_num);
  fail ();
;;

let print_test_number_failed i =
  all_tests_ok := false;
  next_test ();
  prerr_endline
   (Printf.sprintf
      "\n\nMake_test_v: Fatal Error %s the %i-th test is declared to be %i"
      !module_name (!local_test_num) i );
  fail ();
;;

let print_test_label_non_increasing i =
  all_tests_ok := false;
  next_test ();
  prerr_endline
   (Printf.sprintf
      "\n\n********* %s Test label %i is not greater than last test label %i ***********"
      !module_name i !local_test_num);
  fail ();
;;

(* The testing functions. *)
let test b =
 next_test ();
 if not b then print_test_fail ()
;;

let test_number i b =
 if i = 1 + (!local_test_num) 
 then test b 
 else print_test_number_failed i
;;

let testl i b =
 if i >= !local_test_num then
   begin
    local_test_num := i;
    test b
   end
 else print_test_label_non_increasing i
;;

(* Applies f to x and checks that the evaluation indeed
   raises an exception that verifies the predicate [pred]. *)
let test_raises_exc_p pred f x =
 next_test ();
 try
   ignore (f x);
   print_failure_test_succeed ()
 with
 | x ->
   pred x || print_failure_test_fail ()
;;

(* Applies f to x and checks that the evaluation indeed
   raises some exception. *)
let test_raises_some_exc f = test_raises_exc_p (fun _ -> true) f
and test_raises_this_exc exc = test_raises_exc_p (fun x -> x = exc)
;;

(* Applies f to x and checks that the evaluation indeed
   raises exception Failure s. *)

let test_raises_this_failure s f x =
  test_raises_exc_p (fun x -> x = Failure s) f x
;;

(* Applies f to x and checks that the evaluation indeed
   raises the exception Failure. *)
let test_raises_some_failure f x =
  test_raises_exc_p (function Failure _ -> true | _ -> false) f x
;;

let failure_test f x s = test_raises_this_failure s f x
and any_failure_test = test_raises_some_failure
;;
