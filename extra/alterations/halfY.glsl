float halfY(float sdf,vec3 pos){
    return max(sdf,pos.y);
}

#pragma glslify:export(halfY)