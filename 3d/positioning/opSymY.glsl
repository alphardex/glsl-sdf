vec2 opSymY(in vec2 p)
{
    p.y=abs(p.y);
    return p;
}

vec3 opSymY(in vec3 p)
{
    p.y=abs(p.y);
    return p;
}

#pragma glslify:export(opSymY)