float ndot(vec2 a,vec2 b){return a.x*b.x-a.y*b.y;}
float sdRhombus(in vec2 p,in vec2 b)
{
    p=abs(p);
    float h=clamp(ndot(b-2.*p,b)/dot(b,b),-1.,1.);
    float d=length(p-.5*b*vec2(1.-h,1.+h));
    return d*sign(p.x*b.y+p.y*b.x-b.x*b.y);
}

#pragma glslify:export(sdRhombus)