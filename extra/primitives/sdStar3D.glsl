float sdStar(in vec2 p,in float r,in int n,in float m)
{
    // next 4 lines can be precomputed for a given shape
    float an=3.141593/float(n);
    float en=3.141593/m;// m is between 2 and n
    vec2 acs=vec2(cos(an),sin(an));
    vec2 ecs=vec2(cos(en),sin(en));// ecs=vec2(0,1) for regular polygon
    
    float bn=mod(atan(p.x,p.y),2.*an)-an;
    p=length(p)*vec2(cos(bn),abs(sin(bn)));
    p-=r*acs;
    p+=ecs*clamp(-dot(p,ecs),0.,r*acs.y/ecs.y);
    return length(p)*sign(p.x);
}

float opExtrusion(in vec3 p,in float sdf,in float h)
{
    vec2 w=vec2(sdf,abs(p.z)-h);
    return min(max(w.x,w.y),0.)+length(max(w,0.));
}

float sdStar3D(in vec3 pos,in float r,in int n,in float m,in float h)
{
    return opExtrusion(pos,sdStar(pos.xy,r,n,m),h);
}

#pragma glslify:export(sdStar3D)