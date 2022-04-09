float sdCutSphere(vec3 p,float r,float h)
{
    // sampling independent computations (only depend on shape)
    float w=sqrt(r*r-h*h);
    
    // sampling dependant computations
    vec2 q=vec2(length(p.xz),p.y);
    float s=max((h-r)*q.x*q.x+w*w*(h+r-2.*q.y),h*q.x-w*q.y);
    return(s<0.)?length(q)-r:
    (q.x<w)?h-q.y:
    length(q-vec2(w,h));
}

#pragma glslify:export(sdCutSphere)