float length6(vec2 p)
{
    p=p*p*p;p=p*p;
    return pow(p.x+p.y,1./6.);
}

#pragma glslify:export(length6)