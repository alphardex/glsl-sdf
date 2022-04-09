float length2(vec2 p)
{
    return sqrt(p.x*p.x+p.y*p.y);
}

#pragma glslify:export(length2)