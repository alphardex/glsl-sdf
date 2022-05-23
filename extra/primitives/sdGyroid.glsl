float sdGyroid(vec3 p,float scale,float thickness,float bias){
    p*=scale;
    float d=dot(sin(p),cos(p.zxy));
    float g=abs(d-bias);
    return g/scale-thickness;
}

#pragma glslify:export(sdGyroid)