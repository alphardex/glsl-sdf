float halfZ(float sdf,vec3 pos){
    return max(sdf,pos.z);
}

#pragma glslify:export(halfZ)