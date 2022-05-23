float sdTriangle(in vec2 p,in vec2 p0,in vec2 p1,in vec2 p2)
{
    vec2 e0=p1-p0;
    vec2 e1=p2-p1;
    vec2 e2=p0-p2;
    
    vec2 v0=p-p0;
    vec2 v1=p-p1;
    vec2 v2=p-p2;
    
    vec2 pq0=v0-e0*clamp(dot(v0,e0)/dot(e0,e0),0.,1.);
    vec2 pq1=v1-e1*clamp(dot(v1,e1)/dot(e1,e1),0.,1.);
    vec2 pq2=v2-e2*clamp(dot(v2,e2)/dot(e2,e2),0.,1.);
    
    float s=e0.x*e2.y-e0.y*e2.x;
    vec2 d=min(min(vec2(dot(pq0,pq0),s*(v0.x*e0.y-v0.y*e0.x)),
    vec2(dot(pq1,pq1),s*(v1.x*e1.y-v1.y*e1.x))),
    vec2(dot(pq2,pq2),s*(v2.x*e2.y-v2.y*e2.x)));
    
    return-sqrt(d.x)*sign(d.y);
}

float opExtrusion(in vec3 p,in float sdf,in float h)
{
    vec2 w=vec2(sdf,abs(p.z)-h);
    return min(max(w.x,w.y),0.)+length(max(w,0.));
}

float sdTriangle3D(in vec3 pos,in vec2 p0,in vec2 p1,in vec2 p2,in float h)
{
    return opExtrusion(pos,sdTriangle(pos.xy,p0,p1,p2),h);
}

float sdTriangle3D(in vec3 pos,in vec2 A,in vec2 B,in vec2 C,in float xMax,in float yMax,in float zMax)
{
    vec2 xyMax=vec2(xMax,yMax);
    vec2 v0=xyMax*cos(A*PI);
    vec2 v1=xyMax*cos(B*PI);
    vec2 v2=xyMax*cos(C*PI);
    return sdTriangle3D(pos,v0,v1,v2,zMax);
}

#pragma glslify:export(sdTriangle3D)