vec3 opSymXZ(in vec3 p)
{
    p.xz=abs(p.xz);
    return vec3(p);
}

#pragma glslify:export(opSymXZ)