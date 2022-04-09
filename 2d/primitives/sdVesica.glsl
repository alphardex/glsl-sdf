float sdVesica(vec2 p,float r,float d)
{
    p=abs(p);
    float b=sqrt(r*r-d*d);
    return((p.y-b)*d>p.x*b)?length(p-vec2(0.,b))
    :length(p-vec2(-d,0.))-r;
}

#pragma glslify:export(sdVesica)