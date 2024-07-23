botoes:

// mudar a cor do botao "sim" e "nao" caso o ponteiro esteja acima dos seus sprites
if GetSpriteHitTest(sprite_botao_sim, GetPointerX(), GetPointerY() ) = 1
	SetSpriteVisible(sprite_botao_sim, 0)		
	SetSpriteVisible(sprite_botao_sim_vermelho, 1) 	
else
	SetSpriteVisible(sprite_botao_sim, 1)		
	SetSpriteVisible(sprite_botao_sim_vermelho, 0)		
endif
    
if GetSpriteHitTest(sprite_botao_nao, GetPointerX(), GetPointerY() ) = 1
	SetSpriteVisible(sprite_botao_nao, 0)		
	SetSpriteVisible(sprite_botao_nao_vermelho, 1)		
else
	SetSpriteVisible(sprite_botao_nao, 1)		
	SetSpriteVisible(sprite_botao_nao_vermelho, 0)		
endif
    
// colocar a seta no sim
if GetSpriteHitTest(sprite_botao_sim, GetPointerX(), GetPointerY() ) = 1
    	SetSpritePosition(sprite_seta, 350, 650)
    	SetSpriteVisible(sprite_seta, 1)
endif
    		 
    // colocar a seta no nao
if GetSpriteHitTest(sprite_botao_nao, GetPointerX(), GetPointerY() ) = 1 
	SetSpritePosition(sprite_seta, 750, 650)
	SetSpriteVisible(sprite_seta, 1)
endif
    
// deixar a seta invisivel caso nao esteja sobre nenhum dos sprites
if GetSpriteHitTest(sprite_botao_sim , GetPointerX(), GetPointerY() ) = 0 AND GetSpriteHitTest(sprite_botao_nao, GetPointerX(), GetPointerY() ) = 0
	SetSpriteVisible(sprite_seta, 0)
endif
    	
// sair do jogo na tela inicial4
    	
if GetPointerPressed() = 1 AND GetSpriteHitTest(sprite_botao_nao, GetPointerX(), GetPointerY() ) = 1
	exit
endif
    
Return