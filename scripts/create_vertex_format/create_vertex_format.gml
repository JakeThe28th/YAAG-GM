// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_vertex_format()	{
//Begin defining a format
vertex_format_begin();
vertex_format_add_position_3d();//Add 3D position info
vertex_format_add_color();//Add color info
vertex_format_add_textcoord();//Texture coordinate info
//End building the format, and assign the format to the variable "format"
format = vertex_format_end();

}