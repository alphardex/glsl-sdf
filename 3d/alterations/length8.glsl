float length8(vec2 p)
{
    p=p*p;p=p*p;p=p*p;
    return pow(p.x+p.y,1./8.);
}

float length8(vec3 p)
{
    p=p*p;p=p*p;p=p*p;
    return pow(p.x+p.y+p.z,1./8.);
}

#pragma glslify:export(length8)