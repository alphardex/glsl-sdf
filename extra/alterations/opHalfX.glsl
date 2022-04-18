float opHalfX(float sdf,vec3 pos){
    return max(sdf,pos.x);
}

#pragma glslify:export(opHalfX)