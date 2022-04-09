vec3 opSymX(in vec3 p)
{
    p.x=abs(p.x);
    return vec3(p);
}

#pragma glslify:export(opSymX)