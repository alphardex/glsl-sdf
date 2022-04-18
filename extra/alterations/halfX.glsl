float halfX(float sdf,vec3 pos){
    return max(sdf,pos.x);
}

#pragma glslify:export(halfX)