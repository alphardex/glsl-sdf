float sdParabola(in vec2 pos,in float k)
{
    pos.x=abs(pos.x);
    float ik=1./k;
    float p=ik*(pos.y-.5*ik)/3.;
    float q=.25*ik*ik*pos.x;
    float h=q*q-p*p*p;
    float r=sqrt(abs(h));
    float x=(h>0.)?
    pow(q+r,1./3.)-pow(abs(q-r),1./3.)*sign(r-q):
    2.*cos(atan(r,q)/3.)*sqrt(p);
    return length(pos-vec2(x,k*x*x))*sign(pos.x-x);
}

float sdParabola(in vec2 pos,in float wi,in float he)
{
    pos.x=abs(pos.x);
    float ik=wi*wi/he;
    float p=ik*(he-pos.y-.5*ik)/3.;
    float q=pos.x*ik*ik*.25;
    float h=q*q-p*p*p;
    float r=sqrt(abs(h));
    float x=(h>0.)?
    pow(q+r,1./3.)-pow(abs(q-r),1./3.)*sign(r-q):
    2.*cos(atan(r/q)/3.)*sqrt(p);
    x=min(x,wi);
    return length(pos-vec2(x,he-x*x/ik))*
    sign(ik*(pos.y-he)+pos.x*pos.x);
}

#pragma glslify:export(sdParabola)