vec3 opCheapBend(vec3 p,float k)
{
    float c=cos(k*p.y);
    float s=sin(k*p.y);
    mat2 m=mat2(c,-s,s,c);
    vec3 q=vec3(m*p.xy,p.z);
    return q;
}

#pragma glslify:export(opCheapBend)