/* 
	Planning for the level format.
	NONE OF THIS IS IMPLEMENTED YET.
	
	I'm planning on having a room contain a list of "objects", which represent well, objects in the game
	
*/

level_presets = ds_map_create(); 
/*  DS map containing every possible room,
	which also lists their probabilities, 
	unique generation options, and level */
	
   	level_current = ds_map_create(); 
/*  DS map describing the current level, dynamically generated.
		Room
			X Y position
			Name 
			Visibility
			list of objects in room
				[ This is iterated to draw and perform logic] 
				VBO Reference [see later section]
				Texture
				Name
			*/
   
/* Some objects to add: 
	Door - Faces in a direction, can be walked into. Will switch the visible room.
	Wall - Faces in a direction.
	Wall Collider - Like in mario sixty-four. You walk towards it but it pushes you out.
	*/
	
	vbo_index = ds_map_create();
/*
	Each object is created with a VBO, which is added to to VBO ds map.
	Indexed with a name, we'll only need to create 1 VBO per unique object, and we reuse for the same objects.
*/
	viewmode = 1
	/* View mode
		0 = Debug, which visually shows collision, and other special objects.
		1 = Gameplay, hides those things. */