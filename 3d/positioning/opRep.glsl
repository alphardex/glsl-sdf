vec3 opRep(in vec3 p,in vec3 c)
{
    vec3 q=mod(p+.5*c,c)-.5*c;
    return vec3(q);
}

#pragma glslify:export(opRep)