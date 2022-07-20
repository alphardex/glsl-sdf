vec3 opRotation(const in vec3 p,const in vec4 q){
    return p+2.*cross(-q.xyz,cross(-q.xyz,p)+q.w*p);
}

#pragma glslify:export(opRotation)