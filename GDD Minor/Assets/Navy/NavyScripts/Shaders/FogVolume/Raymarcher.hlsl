void MyFunction_float(float3 rayOrigin, float3 rayDirection, float numSteps, float stepSize,
                       float densityScale, UnityTexture3D volumeTex, UnitySamplerState volumeSampler,
                       float3 offset, out float Out)
{
    float density = 0;
    float transmission = 0;
	
    for (int i = 0; i < numSteps; i++)
    {
        rayOrigin += (rayDirection * stepSize);
					
		//Calculate density
        float sampledDensity = SAMPLE_TEXTURE3D(volumeTex, volumeSampler, rayOrigin + offset).r;
        density += sampledDensity * stepSize;
					
    }

    Out = density * densityScale;
}

 