//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float CloudBias;
//   float4 CloudColor;
//   float CloudFadeOut;
//   float CloudInscatteringRange;
//   float CloudShadowStrength;
//   float4 CloudThicknessEdgeSmoothDetailScaleStrength;
//   float CloudThreshold;
//   sampler2D GalaxySampler;
//   float HDRExposure;
//   float3 HDRExposureClamp;
//   float3 HDRSunExposure;
//   sampler2D HighDetailNoiseSampler;
//   float4 MoonColorConstant;
//   float MoonGlow;
//   sampler2D MoonGlowSampler;
//   float4 MoonLight;
//   float3 MoonPosition;
//   sampler2D MoonSampler;
//   float MoonVisiblity;
//   float3 MoonXVector;
//   float3 MoonYVector;
//   sampler2D PerlinNoiseSampler;
//   float4 StarFieldBrightness;
//   float3 SunCentre;
//   float3 SunColor;
//   float4 SunDirection;
//   float SunSize;
//   float4 SunsetColor;
//   float4 TopCloudBiasDetailThresholdHeight;
//   float3 TopCloudColor;
//   float3 gtaSkyDomeFade;
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
//   gtaSkyDomeFade                              c67      1
//   gtaWaterColor                               c68      1
//   MoonGlow                                    c69      1
//   CloudColor                                  c70      1
//   SunsetColor                                 c71      1
//   CloudThreshold                              c72      1
//   CloudBias                                   c73      1
//   CloudFadeOut                                c74      1
//   TopCloudBiasDetailThresholdHeight           c75      1
//   TopCloudColor                               c76      1
//   CloudShadowStrength                         c77      1
//   CloudInscatteringRange                      c78      1
//   CloudThicknessEdgeSmoothDetailScaleStrength c79      1
//   StarFieldBrightness                         c80      1
//   MoonLight                                   c81      1
//   MoonVisiblity                               c82      1
//   SunSize                                     c83      1
//   MoonColorConstant                           c84      1
//   MoonPosition                                c85      1
//   MoonXVector                                 c86      1
//   MoonYVector                                 c87      1
//   HDRExposure                                 c88      1
//   HDRSunExposure                              c89      1
//   HDRExposureClamp                            c90      1
//   MoonSampler                                 s0       1
//   MoonGlowSampler                             s1       1
//   GalaxySampler                               s2       1
//   PerlinNoiseSampler                          s3       1
//   HighDetailNoiseSampler                      s4       1
//

    ps_3_0
    def c0, 9.99999975e-006, 1, -11.6163721, 32
    def c1, 0.9375, 0.5, 12.5799999, -0.0625
    def c2, 0.600000024, -2, 3, 4
    def c3, 0.200000003, 0, 0.25, 0.349999994
    def c4, 0.899999976, 0.5, 0, 1
    def c5, 64, 0.300000012, 0.699999988, 0.170000002
    def c6, 1, 1.39999998, 0, 0
    dcl_texcoord_pp v0.xy
    dcl_texcoord1_pp v1.xyz
    dcl_texcoord2_pp v2
    dcl_texcoord3_pp v3.zw
    dcl_texcoord4_pp v4.xyz
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    add r0.xyz, c0.x, v1
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul_pp r1.xyz, r0, r0.w
    mov r2.y, c0.y
    add_sat r1.w, r2.y, -c89.y
    dp3_pp r3.y, r1, c65
    mul r3.x, r1.w, r3.y
    mul r4.x, r1.w, c0.z
    mov r4.yz, c1.xxyw
    mad_sat r1.xzw, r3.xyyy, c1.zywy, r4.xyyz
    pow r2.x, r1.x, c0.w
    mul r1.x, r1.z, r1.z
    mul r1.x, r1.z, r1.x
    mov r3.xw, c2
    add_sat r1.z, r3.x, c65.w
    mad r1.x, r1.x, -r1.z, r2.x
    mad r1.x, r1.w, c83.x, r1.x
    mul_sat r1.x, r1.x, c1.y
    mad_sat r1.z, r1.w, c64.y, c64.x
    mul r1.w, r1.z, r1.z
    mad r1.z, r1.z, c2.y, c2.z
    mul r1.z, r1.w, r1.z
    mul r1.z, r1.z, c64.z
    mad_pp r1.x, r1.x, c2.w, r1.z
    add_sat_pp r1.z, -r1.x, c0.y
    mul_pp r2.xzw, r1.x, c66.xyyz
    mul r4.xyz, r2_abs.xzww, r2_abs.xzww
    mad_pp r2.xzw, r4.xyyz, r4.xyyz, r2
    mul_pp r1.x, r1.z, c89.x
    texld_pp r4, v0, s3
    texld_pp r5, v2.zwzw, s4
    add_pp r1.z, r5.x, -c1.y
    mul_pp r1.w, r1.z, c79.w
    mad_pp r3.x, r1.z, c79.w, r4.x
    mov r4.x, c72.x
    mad_sat_pp r3.x, r4.x, r3.x, -c73.x
    pow r4.y, r3.x, c79.x
    mul_sat r3.x, r3.x, c79.y
    mul_pp r3.z, r4.y, r3.x
    texld_pp r5, v2, s3
    mul r5.yz, c79.z, v2.xxyw
    texld r6, r5.yzzw, s4
    mul r4.w, r6.x, c79.w
    mad_pp r4.w, r4.w, c3.x, r5.x
    mad r4.x, r4.x, r4.w, -c73.x
    mul_sat_pp r4.x, r4.x, c77.x
    texld_pp r5, v4, s3
    mad_pp r1.w, r1.w, c75.y, r5.y
    mad_sat r1.w, c75.z, r1.w, -c75.x
    mul_pp r1.w, r1.w, v4.z
    mul_pp r4.w, r3.y, r3.y
    mad r3.x, r4.y, -r3.x, c0.y
    mad r4.y, r4.x, -c1.y, r3.x
    max r5.x, r4.y, c3.y
    mul r4.y, r4.w, r5.x
    mad_pp r4.y, r4.y, c78.x, r2.y
    mad_sat r1.z, r1.z, c3.x, r4.z
    add r4.z, -r4.x, c0.y
    mul r4.z, r3.z, r4.z
    mad_pp r1.z, r4.z, r1.z, r1.z
    mad r3.y, r3.y, c3.z, c3.w
    mul_pp r1.z, r1.z, r3.y
    mad r4.xyz, r4.y, c70, -r4.x
    mad_pp r4.xyz, c71, r1.z, r4
    mul_pp r1.z, r1.w, r3.x
    lrp_pp r5.xyz, r1.z, c76, r4
    mad_pp r1.z, r3.x, r1.z, r3.z
    mul_sat_pp r3.xyz, r1.x, v5
    mad_pp r2.xzw, r2, c89.x, r3.xyyz
    texld_pp r4, v3.zwzw, s2
    mul_pp r3.xyz, r4, c80.y
    mad_pp r0.xyz, r0, r0.w, -c85
    dp3 r4.x, c86, r0
    dp3 r4.y, c87, r0
    mad_pp r0.xy, r4, c4.x, c4.y
    cmp r0.zw, r0.xyxy, c4.z, c4.w
    add r1.xw, -r0.xyzy, c0.y
    cmp r1.xw, r1, c4.z, c4.w
    add r0.zw, r0, r1.xyxw
    cmp_pp r0.zw, -r0, c4.z, c4.w
    mad_pp r0.xy, r0, c81, c81.zwzw
    dsx_pp r1.xw, r0.xyzy
    dsy_pp r4.zw, r0.xyxy
    add_pp r0.z, r0.w, r0.z
    if_ge -r0.z, c3.y
      add_pp r0.zw, r4.xyxy, c1.y
      add r4.xy, -r0.zwzw, c0.y
      cmp r4.xy, r4, c4.z, c4.w
      cmp r6.xy, r0.zwzw, c4.z, c4.w
      add r4.xy, r4, r6
      cmp_pp r4.xy, -r4, c4.z, c4.w
      add_sat_pp r4.x, r4.y, r4.x
      add_pp r4.x, -r4.x, c0.y
      mad_pp r0.zw, r0, c81.xyxy, c81
      texldd_pp r6, r0.zwzw, s0, r1.xwzw, r4.zwzw
      mul_pp r6, r4.x, r6
      mul r7.xyz, r6.w, c84
      texldd_pp r0, r0, s1, r1.xwzw, r4.zwzw
      add r0.yzw, r2.y, c84.xxyz
      mul r0.xyz, r0.x, r0.yzww
      mul_pp r0.xyz, r0, c69.x
      mad_pp r4.xyz, r6, r7, r0
      mov r0.w, c84.w
      mul_sat r0.w, r0.w, c5.x
      mad r0.w, r6.w, -r0.w, c0.y
      mul_pp r3.xyz, r3, r0.w
      dp3_pp r0.w, r2.xzww, c5.yzww
      mad_sat_pp r0.w, r0.w, -c82.x, r2.y
      mul_pp r0.w, r0.w, r0.w
      add r1.xw, -r1.z, c6.xyzy
      mul_pp r0.w, r0.w, r1.x
      mul_pp r0.xyz, r0, r0.w
      mad r0.xyz, r0, r1.w, c0.y
      mul_pp r5.xyz, r5, r0
      mad_pp r2.xzw, r4.xyyz, r0.w, r2
    endif
    add_pp r0.xyz, r2.xzww, r3
    mad_sat_pp r0.w, r1.y, r3.w, -c74.x
    mul_pp r0.w, r1.z, r0.w
    lrp_pp r1.xyz, r0.w, r5, r0
    mul_pp r0.xyz, r1, c88.x
    min_pp r1.xyz, r0, c90
    min_pp r0.xyz, c90, r1
    add r0.w, c67.x, -v1.y
    mul_sat r0.w, r0.w, c67.y
    add r1.xyz, -r0, c68
    mad oC0.xyz, r0.w, r1, r0
    mov oC0.w, c0.y
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 141 instruction slots used (8 texture, 133 arithmetic)
