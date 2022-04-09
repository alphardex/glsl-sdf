float sdPyramid(vec3 p,float h)
{
    float m2=h*h+.25;
    
    p.xz=abs(p.xz);
    p.xz=(p.z>p.x)?p.zx:p.xz;
    p.xz-=.5;
    
    vec3 q=vec3(p.z,h*p.y-.5*p.x,h*p.x+.5*p.y);
    
    float s=max(-q.x,0.);
    float t=clamp((q.y-.5*p.z)/(m2+.25),0.,1.);
    
    float a=m2*(q.x+s)*(q.x+s)+q.y*q.y;
    float b=m2*(q.x+.5*t)*(q.x+.5*t)+(q.y-m2*t)*(q.y-m2*t);
    
    float d2=min(q.y,-q.x*m2-q.y*.5)>0.?0.:min(a,b);
    
    return sqrt((d2+q.z*q.z)/m2)*sign(max(q.z,-p.y));
}

#pragma glslify:export(sdPyramid)