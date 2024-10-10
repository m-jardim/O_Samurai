player_movement:

	// tornando os sprites invisiveis

	SetSpriteVisible(sprite_right_run, 0)
	SetSpriteVisible(sprite_left_run, 0)
	SetSpriteVisible(sprite_right_attack, 0)
	SetSpriteVisible(sprite_left_attack, 0)

	SetSpriteVisible(idle_sprite, 1)
	
    // Verifica se a tecla "A" (código 65) foi pressionada
    if GetRawKeyPressed(65)
        Print("Tecla A Pressionada")
    endif
		
Return
