player_animation: // funcao para a movimentacao do personagem
	
	// verifica o estado atual do jogador
	if player_state = "idle"
         // mostra o sprite idle e esconde os outros
		SetSpriteVisible(idle_sprite, 1)
		SetSpriteVisible(sprite_right_run, 0)
		SetSpriteVisible(sprite_left_run, 0)
		SetSpriteVisible(sprite_right_attack, 0)
		SetSpriteVisible(sprite_left_attack, 0)
		SetSpritePosition(idle_sprite, playerX, playerY)
		if GetSpritePlaying(idle_sprite) = 0
			PlaySprite(idle_sprite, 8, 1, 1, 5)
		endif
	elseif player_state = "right_attack"
         // mostra o sprite de ataque para a direita e esconde os outros
         SetSpriteVisible(idle_sprite, 0)
         SetSpriteVisible(sprite_right_run, 0)
         SetSpriteVisible(sprite_left_run, 0)
         SetSpriteVisible(sprite_right_attack, 1)
         SetSpriteVisible(sprite_left_attack, 0)
         SetSpritePosition(sprite_right_attack, playerX, playerY)
         if GetSpritePlaying(sprite_right_attack) = 0 
         	PlaySprite(sprite_right_attack, 15, 1, 1, 6)
		 endif       
	elseif player_state = "left_attack"
         // mostra o sprite de ataque para a esquerda e esconde os outros
         SetSpriteVisible(idle_sprite, 0)
         SetSpriteVisible(sprite_right_run, 0)
         SetSpriteVisible(sprite_left_run, 0)
         SetSpriteVisible(sprite_right_attack, 0)
         SetSpriteVisible(sprite_left_attack, 1)
         SetSpritePosition(sprite_left_attack, playerX - 50, playerY)
         if GetSpritePlaying(sprite_left_attack) = 0
         	PlaySprite(sprite_left_attack, 15, 1, 1, 6)
         endif   
	elseif player_state = "right_run"
         // mostra o sprite de corrida para a direita e esconde os outros
         SetSpriteVisible(idle_sprite, 0)
         SetSpriteVisible(sprite_right_run, 1)
         SetSpriteVisible(sprite_left_run, 0)
         SetSpriteVisible(sprite_right_attack, 0)
         SetSpriteVisible(sprite_left_attack, 0)
         SetSpritePosition(sprite_right_run, playerX, playerY)
         SetSpritePosition(sprite_right_attack, playerX, playerY)
		if GetSpritePlaying(sprite_right_run) = 0
			PlaySprite(sprite_right_run, 10, 1, 1, 8)
		endif       
	elseif player_state = "left_run"
         // mostra o sprite de corrida para a esquerda e esconde os outros
         SetSpriteVisible(idle_sprite, 0)
         SetSpriteVisible(sprite_right_run, 0)
         SetSpriteVisible(sprite_left_run, 1)
         SetSpriteVisible(sprite_right_attack, 0)
         SetSpriteVisible(sprite_left_attack, 0)
         SetSpritePosition(sprite_left_run, playerX, playerY)
         SetSpritePosition(sprite_left_attack, playerX, playerY)
		if GetSpritePlaying(sprite_left_run) = 0
			PlaySprite(sprite_left_run, 10, 1, 1, 8)
		endif        
	endif
	
Return

player_movement:

	// movimento para a direita
	if player_state = "left_attack" OR player_state = "right_attack"
		Return // impede o movimento caso esteja atacando
	elseif player_state = "left_run" and GetSpriteCollision(collision_wall1, sprite_left_run) = 0 and GetSpriteCollision(collision_wall1, sprite_left_attack) = 0 and GetSpriteCollision(collision_wall1, sprite_right_run) = 0 and GetSpriteCollision(collision_wall1, sprite_right_attack) = 0 
		playerX = playerX - 5 // invisible wall a esquerda
	elseif player_state = "right_run" and GetSpriteCollision(collision_wall2, sprite_left_run) = 0 and GetSpriteCollision(collision_wall2, sprite_left_attack) = 0 and GetSpriteCollision(collision_wall2, sprite_right_run) = 0 and GetSpriteCollision(collision_wall2, sprite_right_attack) = 0 
		playerX = playerX + 5 // invisible wall a direita
	endif 

player_life:
	//heart size
	heartX = heartX + 0.1
	heartY = heartY + 0.1
	SetSpriteSize(heart_one, heartX, heartY)
	SetSpriteSize(heart_two, heartX, heartY)
	SetSpriteSize(heart_three, heartX, heartY)
	if heartX >= 63 OR heartY >= 63
		heartX = 60
		heartY = 60
	endif
	
	//controle vida
	if player_life = 3
		SetSpriteVisible(heart_one, 1)
		SetSpriteVisible(heart_two, 1)
		SetSpriteVisible(heart_three, 1)
	elseif player_life < 3 AND player_life > 2
		SetSpriteVisible(heart_one, 1)
		SetSpriteVisible(heart_two, 1)
		SetSpriteVisible(heart_three, 0)
	elseif player_life < 2 AND player_life > 1
		SetSpriteVisible(heart_one, 1)
		SetSpriteVisible(heart_two, 0)
		SetSpriteVisible(heart_three, 0)
	else
		game_over = 1
	endif
	
	//hit sound
	if hit_sound_verify = 1
		PlayMusicOGG(hit_sound)
	endif
	
	if game_over = 1
		SetSpriteVisible(enemy_attack, 0)
		SetSpriteVisible(enemy_blood, 0)
		SetSpriteVisible(enemy_run_sprite, 0)
	endif
		 
Return


  