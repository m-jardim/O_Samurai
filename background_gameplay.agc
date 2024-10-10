background_gameplay: // funcao para o background de gameplay

	//limpando a tela
	ClearScreen()

	//carregando as imagens
	background_game1 = LoadImage("gameplay_background_pt1.png")
	background_game2 = LoadImage("gameplay_background_pt2.png")
	background_game3 = LoadImage("gameplay_background_pt3.png")
	background_game4 = LoadImage("gameplay_background_pt4.png")
	background_game5 = LoadImage("gameplay_background_pt5.png")
	background_game6 = LoadImage("gameplay_background_pt6.png")

	//criando e animando o sprite
	sprite_background_game = CreateSprite(0)
	AddSpriteAnimationFrame(sprite_background_game, background_game1)
	AddSpriteAnimationFrame(sprite_background_game, background_game2)
	AddSpriteAnimationFrame(sprite_background_game, background_game3)
	AddSpriteAnimationFrame(sprite_background_game, background_game4)
	AddSpriteAnimationFrame(sprite_background_game, background_game5)
	AddSpriteAnimationFrame(sprite_background_game, background_game6)
	PlaySprite(sprite_background_game, 8, 1, 1, 6)
	
	// barras laterais 
	wall_image_one = CreateImageColor(0, 0, 0, 255)
	wall_one_sprite = CreateSprite(wall_image_one)
	SetSpriteSize(wall_one_sprite, 15, 720)
	SetSpritePosition(wall_one_sprite, -15, 0)
	SetSpriteDepth (wall_one_sprite, 0) 
	
	
	// barras laterais 
	wall_image_two = CreateImageColor(0, 0, 0, 255)
	wall_two_sprite = CreateSprite(wall_image_two)
	SetSpriteSize(wall_two_sprite, 15, 720)
	SetSpritePosition(wall_two_sprite, 1280, 0)
	SetSpriteDepth (wall_two_sprite, 0) 
	

Return

invisible_wall:

	// parade de colisao lado esquerdo
	collision_wall1 = CreateSprite(0)
	SetSpriteSize(collision_wall1, 1, 720)
	SetSpritePosition(collision_wall1, 0, 0)
	SetSpriteVisible(collision_wall1, 0)
	
	// parede de colisao lado direito
	collision_wall2 = CreateSprite(0)
	SetSpriteSize(collision_wall2, 1, 720)
	SetSpritePosition(collision_wall2, 1330, 0)
	SetSpriteVisible(collision_wall2, 0)
	
Return
	