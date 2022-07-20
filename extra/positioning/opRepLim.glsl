vec3 opRepLim(in vec3 p,in vec3 c,in vec3 l){
    return p-c*clamp(round(p/c),-l,l);
}

#pragma glslify:export(opRepLim)