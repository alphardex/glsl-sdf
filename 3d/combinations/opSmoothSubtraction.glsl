float opSmoothSubtraction(float d1,float d2,float k)
{
    float h=max(k-abs(-d1-d2),0.);
    return max(-d1,d2)+h*h*.25/k;
}

#pragma glslify:export(opSmoothSubtraction)