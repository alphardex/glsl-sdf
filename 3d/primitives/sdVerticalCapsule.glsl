float sdVerticalCapsule(vec3 p,float h,float r)
{
    p.y-=clamp(p.y,0.,h);
    return length(p)-r;
}

#pragma glslify:export(sdVerticalCapsule)