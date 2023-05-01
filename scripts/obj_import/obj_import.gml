// Import a .obj file as a vbo.
function obj_import(fname) {

	var object_buffer = vertex_create_buffer();
	vertex_begin(object_buffer, format);

	var vertices = ds_list_create();
	var vertice_texture_coords = ds_list_create();
	
	var objfile = file_text_open_read(fname);
	var currentline = ""
	var currentline_array;
	
	if objfile = -1 show_error("File not opened", true)
	
	// Loop through lines of file
	while (!file_text_eof(objfile))
		{
		currentline = file_text_readln(objfile);
		currentline_array = string_split(currentline, " ");
		
		// Add vertices to the vertex ds list
		if (currentline_array[0] = "v") ds_list_add(vertices, currentline_array[1] + " " + currentline_array[2] + " " + currentline_array[3] + " ")
		
		// Add texture coords to the texture coordinate ds list
		if (currentline_array[0] = "vt") ds_list_add(vertice_texture_coords, currentline_array[1] + " " + currentline_array[2])
		
		// Create faces. Currently only supports triangle faces.
		if (currentline_array[0] = "f") {
			create_triangle(object_buffer, 
				string_split(ds_list_find_index(vertices, string_split(currentline_array[1], "/")[0]), " ")[0],
				string_split(ds_list_find_index(vertices, string_split(currentline_array[1], "/")[0]), " ")[1],
				string_split(ds_list_find_index(vertices, string_split(currentline_array[1], "/")[0]), " ")[2],
					string_split(ds_list_find_index(vertices, string_split(currentline_array[2], "/")[0]), " ")[0],
					string_split(ds_list_find_index(vertices, string_split(currentline_array[2], "/")[0]), " ")[1],
					string_split(ds_list_find_index(vertices, string_split(currentline_array[2], "/")[0]), " ")[2],
						string_split(ds_list_find_index(vertices, string_split(currentline_array[3], "/")[0]), " ")[0],
						string_split(ds_list_find_index(vertices, string_split(currentline_array[3], "/")[0]), " ")[1],
						string_split(ds_list_find_index(vertices, string_split(currentline_array[3], "/")[0]), " ")[2],
				string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[1], "/")[1]), " ")[0],
				string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[1], "/")[1]), " ")[1],
					string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[2], "/")[1]), " ")[0],
					string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[2], "/")[1]), " ")[1],
						string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[3], "/")[1]), " ")[0],
						string_split(ds_list_find_index(vertice_texture_coords, string_split(currentline_array[3], "/")[1]), " ")[1])
			}
		}
		
	file_text_close(objfile);
	vertex_end(object_buffer);

	return object_buffer;
}