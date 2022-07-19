float opInverse(float d)
{
    float result=-d;
    return result;
}

float opOffset(float d,float v)
{
    return d-v;
}

float opIntersection(float d1,float d2)
{
    return max(d1,d2);
}

float opDifference(float d1,float d2)
{
    return opIntersection(d1,opInverse(d2));
}

float opClearance(float d1,float d2,float v)
{
    return opDifference(d1,opOffset(d2,v));
}

float opShell(float d1,float v)
{
    return opClearance(d1,d1,-abs(v));
}

#pragma glslify:export(opShell)