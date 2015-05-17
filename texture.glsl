#pragma glslify: gamma = require('./in')

vec4 texture(sampler2D tex, vec2 uv) {
  vec4 color = texture2D(tex, uv);
  return gamma(color);
}

#pragma glslify: export(texture)