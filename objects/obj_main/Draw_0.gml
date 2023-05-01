// Draw the 3D models.
// Arguments are just vertex_buffer, primitive type and texture.

vertex_submit(vb_plane, pr_trianglelist, sprite_get_texture(testroom1_atlas, 0));
/* Disable the test room by commenting out the above */

//vertex_submit(obj_test, pr_trianglelist, sprite_get_texture(spr_dungeon, 0));
/* Disable the obj import test by commenting out the above */