(* File func.mll *)

{
type token = SEMI | COMMA | VARS | ASGN 
            | IF | THEN | ELSE | ENDIF
            | WHILE | BEGIN | ENDWHILE 
            | METHOD | ENDMETHOD
            | READ | WRITE | RETURN
            | EQ | NEQ | LESSEQ | LESS
            | ID of string | INT of int
            | LBRA | RBRA 
            | EOF
            
exception LexError of string

}

let int = ['1'-'9'] ['0'-'9']* | ['0']
let white = [' ' '\t' '\n']+
let id = ['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9']*

rule token = parse
    | ';'            { SEMI }
    | ','            { COMMA }
    | "vars"         { VARS } 
    | ":="           { ASGN }
    | "if"           { IF }
    | "then"         { THEN }
    | "else"         { ELSE }
    | "endif"        { ENDIF}
    | "while"        { WHILE }
    | "begin"        { BEGIN }
    | "endwhile"     { ENDWHILE }
    | "method"       { METHOD }
    | "endmethod"    { ENDMETHOD }
    | "read"         { READ }
    | "write"        { WRITE }
    | "return"       { RETURN }
    | "eq"           { EQ }
    | "nEq"          { NEQ }
    | "lessEq"       { LESSEQ }
    | "less"         { LESS }
    | int            { INT (int_of_string (Lexing.lexeme lexbuf)) }
    | id             { ID (Lexing.lexeme lexbuf) }
    | '('            { LBRA }
    | ')'            { RBRA }
    | eof            { EOF }
    | white          {token lexbuf}
    | _ { raise (LexError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
