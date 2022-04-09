vec3 opTwist(vec3 p)
{
    float c=cos(10.*p.y+10.);
    float s=sin(10.*p.y+10.);
    mat2 m=mat2(c,-s,s,c);
    return vec3(m*p.xz,p.y);
}

#pragma glslify:export(opTwist)