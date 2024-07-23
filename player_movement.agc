player_movement:

key_a_pressed = 0
key_d_pressed = 0

if GetRawKeyState(30)
	key_a_pressed = 1
	print("ola")
else
	key_a_pressed = 0
endif

if GetRawKeyState(32)
	key_d_pressed = 1
else
	key_d_pressed = 0
endif


	
  
Return