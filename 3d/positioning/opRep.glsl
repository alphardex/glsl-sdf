float opRep(in float p,in float c)
{
    return mod(p,c)-.5*c;
}

vec2 opRep(in vec2 p,in vec2 c)
{
    return mod(p,c)-.5*c;
}

vec3 opRep(in vec3 p,in vec3 c)
{
    return mod(p,c)-.5*c;
}

#pragma glslify:export(opRep)