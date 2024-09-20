shader_type canvas_item;

void vertex() {
    // Called for every vertex the material is visible on.
}

void fragment() {
    // Called for every pixel the material is visible on.
    
    // Use sin and cos functions to oscillate RGB values over time
    float r = sin(TIME) * 0.5 + 0.5; // Oscillates between 0 and 1
    float g = sin(TIME + 2.0) * 0.5 + 0.5; // Slightly offset to get different color
    float b = cos(TIME) * 0.5 + 0.5; // Oscillates between 0 and 1

    // Set the color
    COLOR = vec4(r, g, b, 1.0);
}