set ai 			"Permite la indentación
syntax on 		"Resaltador de sintaxis
set tabstop=4		"Establecer 4 espacio en un tabulador
set shiftwidth=4	"Establecer 4 espacio la autoindentación
set nu			"Mostrar los numeros
set cindent		"Indenta con la forma de C

nmap  :setlocal spell spelllang=es_es<cr>	"Corrector Ortografico
nmap  :setlocal spell spelllang=en_en<cr>

				
map <F2> :NERDTreeToggle<cr>			" Buscador de Archivo NerdTree 

map <F3> :TlistToggle<cr> 


map <F4> : call CompileGcc()<CR> 		" Compilar y ejecutar en C
func! CompileGcc()
  exec "w"
  exec "!gcc % -o %<"
endfunc

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!gcc % -o %<"
  exec "! ./%<"
endfunc 
