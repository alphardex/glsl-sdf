vec3 opScale(in vec3 p,in float s)
{
    return vec3(p/s)*s;
}

#pragma glslify:export(opScale)