float sdDeathStar(in vec3 p2,in float ra,float rb,in float d)
{
    // sampling independent computations (only depend on shape)
    float a=(ra*ra-rb*rb+d*d)/(2.*d);
    float b=sqrt(max(ra*ra-a*a,0.));
    
    // sampling dependant computations
    vec2 p=vec2(p2.x,length(p2.yz));
    if(p.x*b-p.y*a>d*max(b-p.y,0.))
    return length(p-vec2(a,b));
    else
    return max((length(p)-ra),
    -(length(p-vec2(d,0))-rb));
}

#pragma glslify:export(sdDeathStar)