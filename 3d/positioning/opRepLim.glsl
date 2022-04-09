vec3 opRepLim(in vec3 p,in float c,in vec3 l)
{
    vec3 q=p-c*clamp(round(p/c),-l,l);
    return vec3(q);
}

#pragma glslify:export(opRepLim)