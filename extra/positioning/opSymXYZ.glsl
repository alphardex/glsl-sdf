vec3 opSymXYZ(in vec3 p,in vec3 pos,in vec3 mir,in vec3 axis){
    p=p*(vec3(1.)-mir)+(abs(p+pos-axis)-abs(pos-axis))*mir;
    return p;
}

#pragma glslify:export(opSymXYZ)