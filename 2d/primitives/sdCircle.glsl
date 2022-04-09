float sdCircle(vec2 p,float r)
{
    return length(p)-r;
}

#pragma glslify:export(sdCircle)