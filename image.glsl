void mainImage(out vec4 fragColor, in vec2 fragCoord) {
  vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
  vec2 uv0 = uv;
  vec3 finalColor = vec3(0.0);

  for(float i = 0.0; i < 3.0; i++)
  {
    uv = fract(uv * 1.5) - 0.5;

    float d = length(uv);

    vec3 col = palatte(length(uv0) + iTime*.4);

    d = sin(d*8. + iTime)/8.;
    d = abs(d);

    d = 0.02 / d;

    finalColor += col * d;
  }

  fragColor = vec4(finalColor, 1.0);
}
