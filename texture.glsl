const float gamma = 2.2;

vec4 texture(sampler2D tex, vec2 uv) {
  vec4 color = texture2D(tex, uv);
  return vec4(pow(color.rgb, vec3(gamma)), color.a);
}

#pragma glslify: export(texture)