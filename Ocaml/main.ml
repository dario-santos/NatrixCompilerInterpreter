open Lexing

let rec parse lexbuf =
  let token = Lexer.analisador lexbuf in
  parse lexbuf

let main () =
  let cin = 
    if Array.length Sys.argv > 1  
      then open_in Sys.argv.(1)
    else stdin
  in
  let lexbuf = Lexing.from_channel cin in
  try parse lexbuf
  with End_of_file -> ()

let _ = Printexc.print main ()