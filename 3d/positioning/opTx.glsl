vec3 opTx(vec3 p,mat4 m)
{
    return vec3(inverse(m)*vec4(p,1.));
}

#pragma glslify:export(opTx)