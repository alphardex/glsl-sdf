vec3 drawIsoline(vec3 col,vec3 pos){
    float d=map(pos).x;
    col*=1.-exp(-6.*abs(d));
    col*=.8+.2*cos(150.*d);
    col=mix(col,vec3(1.),1.-smoothstep(0.,.01,abs(d)));
    return col;
}

#pragma glslify:export(drawIsoline)