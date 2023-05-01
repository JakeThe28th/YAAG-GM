// Create a triange in the specified vertex buffer.
function create_triangle(buffer, x1, y1, z1, x2, y2, z2, x3, y3, z3, u1, v1, u2, v2, u3, v3) {
	vertex_position_3d(buffer, x1, y1, z1);
	vertex_color(buffer, c_white, 1);
	vertex_texcoord(buffer, u1, v1);
	
	vertex_position_3d(buffer, x2, y2, z2);
	vertex_color(buffer, c_white, 1);
	vertex_texcoord(buffer, u2, v2);
	
	vertex_position_3d(buffer, x3, y3, z3);
	vertex_color(buffer, c_white, 1);
	vertex_texcoord(buffer, u3, v3);

}