(* File func.mll *)

{

(* 
type token = (* TODO *) 
*) 

}

(* TODO *)

rule token = parse
   (* TODO *) 
    | _ { raise (LEX ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }