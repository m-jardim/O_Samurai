update_player_state: // Função para atualizar o estado do jogador
	
	// obter o frame atual da animaçao de ataque
	current_frame_left_attack = GetSpriteCurrentFrame(sprite_left_attack)
	current_frame_right_attack = GetSpriteCurrentFrame(sprite_right_attack)
	
    // verifica se 'A' esta sendo pressionado
    if GetRawKeyState(65) = 1
    	player_state = "left_run" 
    	is_attacking = 0
    	// verifica se o ponteiro esta sendo pressionado
    	if GetPointerReleased() = 1 
			player_state = "left_attack"
			is_attacking = 1 
		else
			player_state = "left_run"
			is_attacking = 0
		endif
	// verifica se 'D' esta sendo pressionado
    elseif GetRawKeyState(68) = 1
        player_state = "right_run"
        is_attacking = 0 
        // verifica se o ponteiro esta sendo pressionado
        if GetPointerReleased() = 1
			player_state = "right_attack"
			is_attacking = 1
		else
			player_state = "right_run"
			is_attacking = 0
		endif
    // Caso A, nem D estejam sendo pressionados
	else
		player_state = "idle" // estado padrao
		// verifica se o ponteiro esta sendo pressionado
        if GetPointerReleased() = 1
			player_state = "right_attack"
			is_attacking = 1
			// verfica se a animacao esta em andamento
			if GetSpritePlaying(sprite_right_attack) = 1
    			player_state = "right_attack"
				is_attacking = 1
				// verifica se chegou ao frame maximo
				if current_frame_right_attack >= 5
					player_state = "idle"
					StopSprite(sprite_right_attack)
					is_attacking = 0 
				else
					player_state = "idle"
					is_attacking = 0
				endif
			endif
		endif
	endif
	// verifica se o sprite de ataque esquerdo esta em andamento
	if GetSpritePlaying(sprite_left_attack) = 1	
		player_state = "left_attack"
		is_attacking = 1 
		// verifica se chegou ao frame maximo
		if current_frame_left_attack >= 5
			player_state = "left_run"
			StopSprite(sprite_left_attack)
			is_attacking = 0
		else 
			player_state = "left_attack"
			is_attacking = 1 
		endif
	endif
	
	// verifica se o sprite de ataque direito esta em andamento
	if GetSpritePlaying(sprite_right_attack) = 1
    		player_state = "right_attack"
		is_attacking = 1
		// verifica se chegou ao frame maximo
		if current_frame_right_attack >= 5
			player_state = "right_run"
			StopSprite(sprite_right_attack)
			is_attacking = 0
		else
			player_state = "right_attack"
			is_attacking = 1
		endif
    endif
Return