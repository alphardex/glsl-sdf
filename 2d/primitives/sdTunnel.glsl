float dot2(in vec2 v){return dot(v,v);}
float dot2(in vec3 v){return dot(v,v);}

float sdTunnel(in vec2 p,in vec2 wh)
{
    p.x=abs(p.x);p.y=-p.y;
    vec2 q=p-wh;
    
    float d1=dot2(vec2(max(q.x,0.),q.y));
    q.x=(p.y>0.)?q.x:length(p)-wh.x;
    float d2=dot2(vec2(q.x,max(q.y,0.)));
    float d=sqrt(min(d1,d2));
    
    return(max(q.x,q.y)<0.)?-d:d;
}

#pragma glslify:export(sdTunnel)