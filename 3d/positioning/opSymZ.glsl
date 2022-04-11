vec3 opSymZ(in vec3 p)
{
    p.z=abs(p.z);
    return p;
}

#pragma glslify:export(opSymZ)