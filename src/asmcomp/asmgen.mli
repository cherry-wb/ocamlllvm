(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1996 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id$ *)

(* From lambda to assembly code *)

val compile_implementation :
    ?toplevel:(string -> bool) ->
    string -> Format.formatter -> int * Lambda.lambda -> unit
val compile_phrase :
    Format.formatter -> Cmm.phrase -> unit

val read_function: Cmm.phrase -> unit

val begin_assembly : unit -> unit
val end_assembly : unit -> unit

val assemble_file: string -> string -> string -> string -> int

type error = Assembler_error of string
exception Error of error
val report_error: Format.formatter -> error -> unit
