float sdSolidAngle(vec3 p,vec2 c,float ra)
{
    // c is the sin/cos of the angle
    vec2 q=vec2(length(p.xz),p.y);
    float l=length(q)-ra;
    float m=length(q-c*clamp(dot(q,c),0.,ra));
    return max(l,m*sign(c.y*q.x-c.x*q.y));
}

#pragma glslify:export(sdSolidAngle)