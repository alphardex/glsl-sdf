float opRepLim(in float p,in float s,in float lima,in float limb)
{
    return p-s*clamp(round(p/s),lima,limb);
}

vec2 opRepLim(in vec2 p,in float s,in vec2 lima,in vec2 limb)
{
    return p-s*clamp(round(p/s),lima,limb);
}

vec3 opRepLim(in vec3 p,in float s,in vec3 lima,in vec3 limb)
{
    return p-s*clamp(round(p/s),lima,limb);
}

#pragma glslify:export(opRepLim)