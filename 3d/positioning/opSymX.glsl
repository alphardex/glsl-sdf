vec2 opSymX(in vec2 p)
{
    p.x=abs(p.x);
    return p;
}

vec3 opSymX(in vec3 p)
{
    p.x=abs(p.x);
    return p;
}

#pragma glslify:export(opSymX)