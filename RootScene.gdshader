shader_type canvas_item;
 
void vertex() {
    // Called for every vertex the material is visible on.
}

void fragment() {
    // Called for every pixel the material is visible on.
    
    float r = sin(TIME) * 0.5 + 0.5; 
    float g = sin(TIME + 2.0) * 0.5 + 0.5; 
    float b = cos(TIME) * 0.5 + 0.5;
    
    COLOR = vec4(r, g, b, 1.0);
}