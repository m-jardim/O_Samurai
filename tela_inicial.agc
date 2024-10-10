tela_inicial:

	// Carregando as Imagens do background
	background_frame1 = LoadImage( "background_lua1.png")
	background_frame2 = LoadImage( "background_lua2.png")
	background_frame3 = LoadImage( "background_lua3.png")
	background_frame4 = LoadImage( "background_lua4.png")
	background_frame5 = LoadImage( "background_lua5.png")
	background_frame6 = LoadImage( "background_lua6.png")

	//animando o background
	sprite_background = CreateSprite(0)
	AddSpriteAnimationFrame( sprite_background, background_frame1)
	AddSpriteAnimationFrame( sprite_background, background_frame2)
	AddSpriteAnimationFrame( sprite_background, background_frame3)
	AddSpriteAnimationFrame( sprite_background, background_frame4)
	AddSpriteAnimationFrame( sprite_background, background_frame5)
	AddSpriteAnimationFrame( sprite_background, background_frame6)
	PlaySprite( sprite_background, 10, 1, 1, 6)
	
	// carregando as imagens do titulo
	imagem_titulo1 = LoadImage("titulo_jogo1.png")
	imagem_titulo2 = LoadImage("titulo_jogo2.png")
	imagem_titulo3 = LoadImage("titulo_jogo3.png")
	imagem_titulo4 = LoadImage("titulo_jogo4.png")
	imagem_titulo5 = LoadImage("titulo_jogo3.png")
	imagem_titulo6 = LoadImage("titulo_jogo2.png")

	// animando o titulo
	sprite_titulo = CreateSprite(0)
	SetSpritePosition(sprite_titulo, 380, 500)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo1)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo2)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo3)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo4)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo5)
	AddSpriteAnimationFrame(sprite_titulo, imagem_titulo6)
	PlaySprite( sprite_titulo, 8, 1, 1, 6)


	// botões de início e seta
	gostaria_de_jogar_id = LoadImage("gostaria_de_jogar.png")
	sprite_gostaria_de_jogar = CreateSprite(gostaria_de_jogar_id)	
	SetSpritePosition(sprite_gostaria_de_jogar, 400, 600)
	SetSpriteVisible(sprite_gostaria_de_jogar, 1)

	id_botao_sim = LoadImage("sim.png")	
	sprite_botao_sim = CreateSprite(id_botao_sim)		
	SetSpritePosition(sprite_botao_sim, 400, 650)
	SetSpriteVisible(sprite_botao_sim, 1)

	id_botao_nao = LoadImage("nao.png") 	
	sprite_botao_nao = CreateSprite(id_botao_nao)		
	SetSpritePosition(sprite_botao_nao, 800, 650)
	SetSpriteVisible(sprite_botao_nao, 1)

	id_botao_sim_vermelho = LoadImage("sim_red.png")	
	sprite_botao_sim_vermelho = CreateSprite(id_botao_sim_vermelho)		
	SetSpritePosition(sprite_botao_sim_vermelho, 400, 650)
	SetSpriteVisible(sprite_botao_sim_vermelho, 0)

	id_botao_nao_vermelho = LoadImage("nao_red.png")	
	sprite_botao_nao_vermelho = CreateSprite(id_botao_nao_vermelho)		
	SetSpritePosition(sprite_botao_nao_vermelho, 800, 650)
	SetSpriteVisible(sprite_botao_nao_vermelho, 0)

	seta_id = LoadImage("seta.png")		
	sprite_seta = CreateSprite(seta_id)

Return