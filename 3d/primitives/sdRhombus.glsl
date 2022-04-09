float ndot(in vec2 a,in vec2 b){return a.x*b.x-a.y*b.y;}

float sdRhombus(vec3 p,float la,float lb,float h,float ra)
{
    p=abs(p);
    vec2 b=vec2(la,lb);
    float f=clamp((ndot(b,b-2.*p.xz))/dot(b,b),-1.,1.);
    vec2 q=vec2(length(p.xz-.5*b*vec2(1.-f,1.+f))*sign(p.x*b.y+p.z*b.x-b.x*b.y)-ra,p.y-h);
    return min(max(q.x,q.y),0.)+length(max(q,0.));
}

#pragma glslify:export(sdRhombus)