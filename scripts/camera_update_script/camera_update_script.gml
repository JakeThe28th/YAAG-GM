// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_update_script(){
//Set up camera location
var center_x = 0;
var center_y = 0;
var distance = 128;
//var zz = -640;
//var xx = lengthdir_x(distance,-current_time/10) + (center_x);//Rotation is negative now to match with the old gif and spin clockwise
//var yy = lengthdir_y(distance,-current_time/10) + (center_y);

//var xx = lengthdir_x(lengthdir_x(distance, -current_time/10), 45);
//var yy = lengthdir_x(lengthdir_y(distance, -current_time/10), 45);
//var zz = lengthdir_y(distance, 45);

if 1 = 1 {
	var xx = obj_player.x
	var yy = obj_player.y
	var zz = 200;
	
	var length = 200;
	
	var offset_x = lengthdir_x(lengthdir_x(length, obj_camera.rotation_y), obj_camera.rotation_z);
	var offset_y = lengthdir_x(lengthdir_y(length, obj_camera.rotation_y), obj_camera.rotation_z);
	var offset_z = lengthdir_y(length, obj_camera.rotation_z);
	
	mLookat = matrix_build_lookat(xx,yy,zz, xx+offset_x,yy+offset_y,zz+offset_z, 0,0,1);
	
	}

//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
//mLookat = matrix_build_lookat(xx,yy,zz, (center_x),(center_y),0, 0,0,-1);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], mLookat);


}