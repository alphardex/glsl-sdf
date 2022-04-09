float length4(vec2 p)
{
    p=p*p;p=p*p;
    return pow(p.x+p.y,1./4.);
}

#pragma glslify:export(length4)