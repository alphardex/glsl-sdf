float dot2(in vec2 v){return dot(v,v);}
float dot2(in vec3 v){return dot(v,v);}

float sdBezier(in vec2 pos,in vec2 A,in vec2 B,in vec2 C)
{
    vec2 a=B-A;
    vec2 b=A-2.*B+C;
    vec2 c=a*2.;
    vec2 d=A-pos;
    float kk=1./dot(b,b);
    float kx=kk*dot(a,b);
    float ky=kk*(2.*dot(a,a)+dot(d,b))/3.;
    float kz=kk*dot(d,a);
    float res=0.;
    float p=ky-kx*kx;
    float p3=p*p*p;
    float q=kx*(2.*kx*kx-3.*ky)+kz;
    float h=q*q+4.*p3;
    if(h>=0.)
    {
        h=sqrt(h);
        vec2 x=(vec2(h,-h)-q)/2.;
        vec2 uv=sign(x)*pow(abs(x),vec2(1./3.));
        float t=clamp(uv.x+uv.y-kx,0.,1.);
        res=dot2(d+(c+b*t)*t);
    }
    else
    {
        float z=sqrt(-p);
        float v=acos(q/(p*z*2.))/3.;
        float m=cos(v);
        float n=sin(v)*1.732050808;
        vec3 t=clamp(vec3(m+m,-n-m,n-m)*z-kx,0.,1.);
        res=min(dot2(d+(c+b*t.x)*t.x),
        dot2(d+(c+b*t.y)*t.y));
        // the third root cannot be the closest
        // res = min(res,dot2(d+(c+b*t.z)*t.z));
    }
    return sqrt(res);
}

float opExtrusion(in vec3 p,in float sdf,in float h)
{
    vec2 w=vec2(sdf,abs(p.z)-h);
    return min(max(w.x,w.y),0.)+length(max(w,0.));
}

float sdBezier3D(in vec3 pos,in vec2 A,in vec2 B,in vec2 C,in float h)
{
    return opExtrusion(pos,sdBezier(pos.xy,A,B,C),h);
}

float sdBezier3D(in vec3 pos,in vec2 A,in vec2 B,in vec2 C,in float xMax,in float yMax,in float zMax)
{
    vec2 xyMax=vec2(xMax,yMax);
    vec2 v0=xyMax*cos(A*PI);
    vec2 v1=xyMax*cos(B*PI);
    vec2 v2=xyMax*cos(C*PI);
    return sdBezier3D(pos,v0,v1,v2,zMax);
}

#pragma glslify:export(sdBezier3D)