vec2 opRevolution(in vec3 p,float w)
{
    return vec2(length(p.xz)-w,p.y);
}

#pragma glslify:export(opRevolution)