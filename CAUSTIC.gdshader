shader_type spatial;
render_mode blend_mix,depth_draw_opaque,cull_back,diffuse_burley,specular_schlick_ggx;
uniform float caustic = 5.0; // The higher this is, the more the light is focused in the effect.
uniform float caustic_contrast = 1.0;
uniform float hash_scale = 0.005;

void fragment() {
	ALPHA = (dot(NORMAL, -VIEW)-caustic)*caustic_contrast;
	ALPHA_HASH_SCALE = hash_scale;
}