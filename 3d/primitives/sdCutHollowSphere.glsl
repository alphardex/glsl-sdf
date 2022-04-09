float sdCutHollowSphere(vec3 p,float r,float h,float t)
{
    // sampling independent computations (only depend on shape)
    float w=sqrt(r*r-h*h);
    
    // sampling dependant computations
    vec2 q=vec2(length(p.xz),p.y);
    return((h*q.x<w*q.y)?length(q-vec2(w,h)):
    abs(length(q)-r))-t;
}

#pragma glslify:export(sdCutHollowSphere)