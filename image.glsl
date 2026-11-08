void mainImage(out vec4 fragColor, in vec2 fragCoord) {
  vec3 paint = vec3(0.2, 0.6, 0.9);
  vec2 uv = fragCoord / iResolution.xy;

  vec2 point = (uv - 0.5) * vec2(iResolution.x / iResolution.y, 1.0);
  float circle = 1.0 - smoothstep(0.24, 0.25, length(point));

  vec2 center = vec2(0.5 + 0.2 * sin(iTime), 0.5);
  point = (uv - center) * vec2(iResolution.x / iResolution.y, 1.0);

  fragColor = vec4(paint * circle, 1.0);
}
