#ifdef GL_ES
precision mediump float;
#endif

#pragma include <stdlib>
#pragma include <graph>
#pragma include <color>
#pragma include <pattern>
#pragma include "./common.glsl"

uniform float dd_time;
uniform vec2 dd_resolution;
uniform vec2 dd_randseed;
uniform vec2 dd_randseed0;
uniform int dd_rendercount;

void main()
{
    vec2 st = gl_FragCoord.xy / dd_resolution.xy;
    // st = lerp(vec2(-3, -3), vec2(3, 3), st);

    vec3 color = vec3(shape_star(st));
    // vec3 color = vec3(shape_clover(st, vec2(0.5), 4.0));
    // color = vec3(shape_bud(st, vec2(0.5), 12.0));
    // color = vec3(shape_gourd(st, vec2(0.5)));
    
    gl_FragColor = vec4(color, 1.0);
}