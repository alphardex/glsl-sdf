float opHalfZ(float sdf,vec3 pos){
    return max(sdf,pos.z);
}

#pragma glslify:export(opHalfZ)