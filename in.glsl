const float gamma = 2.2;

float toLinear(float v) {
  return pow(v, gamma);
}

vec2 toLinear(vec2 v) {
  return pow(v, vec2(gamma));
}

vec3 toLinear(vec3 v) {
  return pow(v, vec3(gamma));
}

vec3 toLinear(vec4 v) {
  return pow(v, vec4(gamma));
}

#pragma glslify: export(toLinear)
