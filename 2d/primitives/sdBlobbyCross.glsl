float sdBlobbyCross(in vec2 pos,float he)
{
    pos=abs(pos);
    pos=vec2(abs(pos.x-pos.y),1.-pos.x-pos.y)/sqrt(2.);
    
    float p=(he-pos.y-.25/he)/(6.*he);
    float q=pos.x/(he*he*16.);
    float h=q*q-p*p*p;
    
    float x;
    if(h>0.){float r=sqrt(h);x=pow(q+r,1./3.)-pow(abs(q-r),1./3.)*sign(r-q);}
    else{float r=sqrt(p);x=2.*r*cos(acos(q/(p*r))/3.);}
    x=min(x,sqrt(2.)/2.);
    
    vec2 z=vec2(x,he*(1.-2.*x*x))-pos;
    return length(z)*sign(z.y);
}

#pragma glslify:export(sdBlobbyCross)