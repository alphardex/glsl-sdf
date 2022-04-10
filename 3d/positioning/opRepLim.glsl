float opRepLim(in float p,in float s,in float lima,in float limb)
{
    return p-s*clamp(round(p/s),lima,limb);
}

#pragma glslify:export(opRepLim)