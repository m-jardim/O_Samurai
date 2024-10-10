// Função para atualizar o estado do jogador
UpdatePlayerState:

    // Verifica a entrada do jogador e define o estado
    if GetRawKeyPressed(65) // tecla 'A' para correr para a esquerda
    	    player_state = "left_run"        
    elseif GetRawKeyPressed(68) // tecla 'D' para correr para a direita        
        player_state = "right_run"                    
    else
		player_state = "idle" // estado padrao se nenhuma tecla for pressionada
    endif
    
Return