# glsl-gamma

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

Convenience utilities for working in linear space when dealing with sRGB textures.

```glsl
#pragma glslify: texture = require('glsl-gamma/texture')
#pragma glslify: toGamma = require('glsl-gamma/out')

void main() {
  //sample to linear space
  vec4 color = texture(uTexture, vUv);

  //do linear space transforms on RGB...

  //output to sRGB color buffer
  gl_FragColor.rgb = toGamma(color.rgb);
  gl_FragColor.a = color.a;
}
```

Currently all gamma operates on a `2.2` constant.

## Usage

[![NPM](https://nodei.co/npm/glsl-gamma.png)](https://nodei.co/npm/glsl-gamma/)

#### `toLinear = require('glsl-gamma/in')`
##### `genType = toLinear(genType color)`

Take a sRGB value and return its linear form.

This is also the default export of `glsl-gamma`.

#### `toGamma = require('glsl-gamma/out')`
##### `genType = toGamma(genType color)`

Takes a linear value and return its gamma-corrected (sRGB) form.

#### `texture = require('glsl-gamma/texture')`
##### `vec4 color = texture(sampler2D uTex, vec2 vUv)`

Samples from the given texture and gamma-corrects the sRGB values to linear form.

## License

MIT. See [LICENSE.md](http://github.com/stackgl/glsl-gamma/blob/master/LICENSE.md) for details.
