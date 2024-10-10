// Projeto: O samurai 

	// mostra todos os erros
	SetErrorMode(2)

	// propriedades da janela
	SetWindowTitle("O samurai")
	SetWindowSize(1280, 720, 0)
	SetWindowAllowResize(1) 

	// propriedades do display
	SetVirtualResolution(1280, 720) 
	SetOrientationAllowed(1, 1, 1, 1) 
	SetSyncRate(60, 0) 
	SetScissor(0, 0, 0, 0) 
	UseNewDefaultFonts(1)
	
	// variaveis do personagem
	global playerY as integer = 570
	global playerX as integer = 100
	global enemy_kills as integer = 0
	global player_state as string = "idle"
	global is_attacking as integer = 0 
	global player_life as float = 3
	global game_over as integer = 0
	
	// variaveis do inimigo
	global enemyY as integer = 590
	global enemyX as integer = 1280
	global enemy_hit as integer = 0
	global enemy_state as string = "alive"
	global attack_range as string = "no"
	global enemy_attacking as integer = 0
	global enemy_attack_frame as integer
	
	//vida
	heartX as float = 60
	heartY as float = 60
	
	//inclusao dos outros arquivos
	#include "tela_inicial.agc"
	#include "botoes.agc"
	#include "logica_principal.agc"
	#include "background_gameplay.agc"
	#include "player_sprite.agc"
	#include "update_state.agc"
	#include "player.agc"
	#include "enemy_sprite.agc"
	#include "enemy.agc"
	
	// sons
	global hit_sound_verify as integer = 0
	musica = LoadMusicOGG("music.ogg")
	hit_sound = LoadMusicOGG("hit_sound.ogg")
	PlayMusicOGG(musica)
		
	gosub tela_inicial

	do	
		time = Timer()
		//controla alguns efeitos nos botoes na tela inicial
		gosub botoes
	
		//logica principal depois de clicar em "sim"
		if GetPointerPressed() = 1 AND GetSpriteHitTest(sprite_botao_sim, GetPointerX(), GetPointerY() ) = 1
			Sleep(1000)
			gosub background_gameplay
			gosub invisible_wall
			gosub player_sprite
			gosub enemy_sprite
			
			do
				if game_over = 1
					gosub tela_inicial
					do
						gosub botoes
						Sync()
					loop
				endif
				
				gosub enemy
				gosub update_player_state
				gosub player_animation
				gosub player_movement
				Print(enemy_kills)
				Sync()
			loop
			
		elseif GetPointerPressed() = 1 AND GetSpriteHitTest(sprite_botao_nao, GetPointerX(), GetPointerY() ) = 1
			exit
		endif
		  		 		
    		Sync()
	loop
