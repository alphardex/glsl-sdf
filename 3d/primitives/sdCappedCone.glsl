float dot2(in vec2 v){return dot(v,v);}
float dot2(in vec3 v){return dot(v,v);}

float sdCappedCone(vec3 p,float h,float r1,float r2)
{
    vec2 q=vec2(length(p.xz),p.y);
    vec2 k1=vec2(r2,h);
    vec2 k2=vec2(r2-r1,2.*h);
    vec2 ca=vec2(q.x-min(q.x,(q.y<0.)?r1:r2),abs(q.y)-h);
    vec2 cb=q-k1+k2*clamp(dot(k1-q,k2)/dot2(k2),0.,1.);
    float s=(cb.x<0.&&ca.y<0.)?-1.:1.;
    return s*sqrt(min(dot2(ca),dot2(cb)));
}

float sdCappedCone(vec3 p,vec3 a,vec3 b,float ra,float rb)
{
    float rba=rb-ra;
    float baba=dot(b-a,b-a);
    float papa=dot(p-a,p-a);
    float paba=dot(p-a,b-a)/baba;
    float x=sqrt(papa-paba*paba*baba);
    float cax=max(0.,x-((paba<.5)?ra:rb));
    float cay=abs(paba-.5)-.5;
    float k=rba*rba+baba;
    float f=clamp((rba*(x-ra)+paba*baba)/k,0.,1.);
    float cbx=x-ra-f*rba;
    float cby=paba-f;
    float s=(cbx<0.&&cay<0.)?-1.:1.;
    return s*sqrt(min(cax*cax+cay*cay*baba,
        cbx*cbx+cby*cby*baba));
    }
    
    #pragma glslify:export(sdCappedCone)