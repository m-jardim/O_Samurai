// Projeto: O samurai 

// mostra todos os erros
SetErrorMode(2)

// propriedades da janela
SetWindowTitle("O samurai")
SetWindowSize(1280, 720, 0)
SetWindowAllowResize(1) // permitir redimensionamento da janela

// propriedades do display
SetVirtualResolution(1280, 720) // não precisa combinar com a janela
SetOrientationAllowed(1, 1, 1, 1) // permitir retrato e paisagem em celulares
SetSyncRate(60, 0) // limite de 30 fps
SetScissor(0, 0, 0, 0) // usar o máximo de tela disponível, sem bordas
UseNewDefaultFonts(1)

#include "tela_inicial.agc"
#include "botoes.agc"

gosub tela_inicial

do	
	gosub botoes
    	
    Print(ScreenFPS())
    Sync()

loop
