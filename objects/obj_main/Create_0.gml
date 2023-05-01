//Setup Game
instance_create_depth(x, y, depth, obj_player);
instance_create_depth(x, y, depth, obj_camera);

//Setup 3D

gpu_set_zwriteenable(true); //Enables writing to the z-buffer
gpu_set_ztestenable(true);  //Enables depth testing
layer_force_draw_depth(true, 0);

view_enabled = true;//Enable the use of views
view_set_visible(0, true);//Make this view visible

camera = camera_create();
	projMat = matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 32000);
	camera_set_proj_mat(camera, projMat);
	view_set_camera(0, camera);
	camera_set_update_script(view_camera[0], camera_update_script);
	//read 
	//https://maddestudiosgames.com/guide-getting-started-with-3d-in-gms2-project-download/ for more information.

create_vertex_format();

vb_plane = vertex_create_buffer();

//floor 
var ww = 128;
var hh = 92;

var u1 = 0;
var v1 = 92/sprite_get_height(testroom1_atlas);
var u2 = (128/sprite_get_width(testroom1_atlas))
var v2 = (184/sprite_get_height(testroom1_atlas))
vertex_begin(vb_plane, format);
	create_triangle(vb_plane, ww, 0, 0, 
							  0, 0, 0, 
							  0, hh, 0,
							  u1, v2,
							  u2, v2,
							  u2, v1);
							  //01 11 10
							  
	create_triangle(vb_plane, ww, 0, 0, 
							  ww, hh, 0, 
							  0, hh, 0,
							  u1, v2,
							  u1, v1,
							  u2, v1);

// Back wall
var ww = 128;
var hh = 92;

var u1 = 0;
var v1 = 0;
var u2 = (128/sprite_get_width(testroom1_atlas))
var v2 = (92/sprite_get_height(testroom1_atlas))
	create_triangle(vb_plane, ww, hh, 0, 
							  0, hh, 0, 
							  0, hh, hh,
							  u1, v2,
							  u2, v2,
							  u2, v1);
							  //01 11 10
							  
	create_triangle(vb_plane, ww, hh, 0, 
							  ww, hh, hh, 
							  0, hh, hh,
							  u1, v2,
							  u1, v1,
							  u2, v1);
							  
	vertex_end(vb_plane);