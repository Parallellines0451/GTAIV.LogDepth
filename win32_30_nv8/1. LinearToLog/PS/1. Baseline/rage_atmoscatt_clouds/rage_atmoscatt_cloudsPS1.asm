//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float CloudBias;
//   float4 CloudColor;
//   float CloudFadeOut;
//   float CloudShadowStrength;
//   float4 CloudThicknessEdgeSmoothDetailScaleStrength;
//   float CloudThreshold;
//   sampler2D GalaxySampler;
//   float HDRExposure;
//   float3 HDRExposureClamp;
//   float HDRSunExposure;
//   sampler2D HighDetailNoiseSampler;
//   sampler2D PerlinNoiseSampler;
//   float4 StarFieldBrightness;
//   float3 SunCentre;
//   float3 SunColor;
//   float4 SunDirection;
//   float SunSize;
//   float4 SunsetColor;
//   float4 TopCloudBiasDetailThresholdHeight;
//   float3 TopCloudColor;
//   float gtaSkyDomeClip;
//   float3 gtaWaterColor;
//
//
// Registers:
//
//   Name                                        Reg   Size
//   ------------------------------------------- ----- ----
//   SunCentre                                   c64      1
//   SunDirection                                c65      1
//   SunColor                                    c66      1
//   gtaSkyDomeClip                              c67      1
//   gtaWaterColor                               c68      1
//   CloudColor                                  c69      1
//   SunsetColor                                 c70      1
//   CloudThreshold                              c71      1
//   CloudBias                                   c72      1
//   CloudFadeOut                                c73      1
//   TopCloudBiasDetailThresholdHeight           c74      1
//   TopCloudColor                               c75      1
//   CloudShadowStrength                         c76      1
//   CloudThicknessEdgeSmoothDetailScaleStrength c77      1
//   StarFieldBrightness                         c78      1
//   SunSize                                     c79      1
//   HDRExposure                                 c80      1
//   HDRSunExposure                              c81      1
//   HDRExposureClamp                            c82      1
//   GalaxySampler                               s0       1
//   PerlinNoiseSampler                          s1       1
//   HighDetailNoiseSampler                      s2       1
//

    ps_3_0
    def c0, 12.5799999, -0.0625, 0.5, 0.25
    def c1, -11.6163721, 0.9375, 0.5, 0.349999994
    def c2, 32, 0.600000024, -2, 3
    def c3, 4, 1, 0.200000003, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2
    dcl_texcoord3 v3.zw
    dcl_texcoord4 v4.xyz
    dcl_texcoord5 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    mov r0.w, c65.w
    add_sat r0.x, r0.w, c2.y
    nrm r1.xyz, v1
    dp3 r0.y, r1, c65
    mov r1.x, c3.x
    mad_sat r0.z, r1.y, r1.x, -c73.x
    mov r1, c0
    mad r1, r0.y, r1, c1
    mov_sat r1.xyz, r1
    mul r0.y, r1.y, r1.y
    mul r0.y, r0.y, r1.y
    pow r0.w, r1.x, c2.x
    mad r0.x, r0.y, -r0.x, r0.w
    mad r0.x, r1.z, c79.x, r0.x
    mad_sat r0.y, r1.z, c64.y, c64.x
    mul_sat r0.x, r0.x, c0.z
    mul r0.w, r0.y, r0.y
    mad r0.y, r0.y, c2.z, c2.w
    mul r0.y, r0.y, r0.w
    mul r0.y, r0.y, c64.z
    mad r0.x, r0.x, c3.x, r0.y
    mul r1.xyz, r0.x, c66
    add_sat r0.x, -r0.x, c3.y
    mul r0.x, r0.x, c81.x
    mul_sat r0.xyw, r0.x, v5.xyzz
    mul r2.xyz, r1, r1
    mad r1.xyz, r2, r2, r1
    mad r0.xyw, r1.xyzz, c81.x, r0
    texld r2, v3.zwzw, s0
    mad r0.xyw, r2.xyzz, c78.y, r0
    mul r1.xy, c77.z, v2
    texld r2, r1, s2
    mul r1.x, r2.x, c77.w
    texld r2, v2, s1
    mad r1.x, r1.x, c3.z, r2.x
    mov r2.x, c71.x
    mad r1.x, r2.x, r1.x, -c72.x
    mul_sat r1.x, r1.x, c76.x
    add r1.y, -r1.x, c3.y
    add r2.yzw, -r1.x, c69.xxyz
    texld r3, v0, s1
    texld r4, v2.zwzw, s2
    add r1.x, r4.x, -c0.z
    mad r1.z, r1.x, c77.w, r3.x
    mad_sat r3.x, r1.x, c3.z, r3.z
    mul r1.x, r1.x, c77.w
    mad_sat r1.z, r2.x, r1.z, -c72.x
    pow r2.x, r1.z, c77.x
    mul_sat r1.z, r1.z, c77.y
    mul r3.y, r1.z, r2.x
    mad r1.z, r2.x, -r1.z, c3.y
    mul r1.y, r1.y, r3.y
    mad r1.y, r1.y, r3.x, r3.x
    mul r1.y, r1.w, r1.y
    mad r2.xyz, c70, r1.y, r2.yzww
    texld r4, v4, s1
    mad r1.x, r1.x, c74.y, r4.y
    mad_sat r1.x, c74.z, r1.x, -c74.x
    mul r1.x, r1.x, v4.z
    mul r1.x, r1.z, r1.x
    mad r1.y, r1.z, r1.x, r3.y
    lrp r3.xyz, r1.x, c75, r2
    mul r0.z, r0.z, r1.y
    lrp r1.xyz, r0.z, r3, r0.xyww
    mul r0.xyz, r1, c80.x
    min r1.xyz, r0, c82
    min r0.xyz, c82, r1
    add r0.w, -c67.x, v1.y
    cmp oC0.xyz, r0.w, r0, c68
    mov oC0.w, c3.y
	// -------- Encode depth as log --------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 76 instruction slots used (6 texture, 70 arithmetic)
