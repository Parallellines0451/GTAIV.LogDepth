//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DirtSampler;
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   sampler2D TextureSampler2;
//   float3 dirtColor;
//   float dirtLevel;
//   float4 gDepthFxParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//   float4 globalScalars;
//   float3 matDiffuseColor;
//   float4 matDiffuseColor2;
//   float reflectivePowerED;
//   float3 specMapIntMask;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDepthFxParams       c16      1
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   globalFogParams      c41      1
//   globalFogColor       c42      1
//   globalFogColorN      c43      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   matDiffuseColor      c66      1
//   matDiffuseColor2     c72      1
//   dirtLevel            c73      1
//   dirtColor            c74      1
//   specMapIntMask       c75      1
//   reflectivePowerED    c76      1
//   LuminanceConstants   c77      1
//   TextureSampler       s0       1
//   TextureSampler2      s1       1
//   DirtSampler          s2       1
//   SpecSampler          s4       1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 9.8511282042e-43 // 703
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 9.99999975e-005, 190, 1.5, 0.0833333358
    def c1, 9.99999975e-006, 0.150000006, 0, 1
    def c2, -0.5, 0.5, -0.25, 1.33333337
    def c3, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c4, 1, -1, 0, -0
    def c5, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c6, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c7, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c8, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c9, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c10, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_color v3
    dcl_texcoord2 v4.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s15
    texld r0, v0, s0
    texld r1, v0.zwzw, s1
    add r2.xyz, c1.x, v1
    nrm r3.xyz, r2
    texld r2, v0, s4
    mul r2.w, r2.w, c76.x
    dp3 r2.x, r2, c75
    mul r2.x, r2.x, c76.x
    mul r2.x, r2.x, c1.y
    mul r4.xyz, r0, c66
    mul r1, r1, c72
    lrp r0.xyz, r1.w, r1, r4
    mul r0, r0, v3
    dp3 r1.x, v3, c77
    mul r1.x, r1.x, c39.z
    mov r1.zw, c1
    if_lt -c73.x, r1.z
      texld r4, v0, s2
      mul r1.y, r4.x, c73.x
      mad r5.x, r4.x, -c73.x, r1.w
      lrp r5.yzw, r1.y, c74.xxyz, r0.xxyz
      mad r6, r0.xxyz, c1.zwww, c1.wzzz
      cmp r4, -r4.x, r6, r5
      mov r0.xyz, r4.yzww
    else
      mov r4.x, c1.w
    endif
    mul r1.y, r2.x, r4.x
    add r2.xyz, c1.x, v2
    nrm r4.xyz, r2
    mad_sat r1.z, r3.z, c2.x, c2.y
    mov r2.xyz, c38
    mad r2.xyz, r2, r1.z, c37
    dp3 r1.z, -r4, r3
    add r1.z, r1.z, r1.z
    mad r5.xyz, r3, -r1.z, -r4
    mul r6.xyz, c18.w, c18
    dp3 r1.z, r3, -c17
    add r1.z, r1.z, c2.z
    mul_sat r1.z, r1.z, c2.w
    dp3_sat r3.w, -c17, r5
    add r3.w, r3.w, c0.x
    mad r2.w, r2.w, c0.y, c0.x
    pow r4.w, r3.w, r2.w
    mul r5.xyz, c61.xyww, v4.y
    mad r5.xyz, v4.x, c60.xyww, r5
    mad r5.xyz, v4.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r2.w, c14, v4
    add r7.xyz, -r2.w, -c54
    cmp r7.yzw, r7.xxyz, c1.w, c1.z
    mov r7.x, c1.w
    dp4 r8.x, r7, c57
    dp4 r8.y, r7, c58
    dp4 r9.x, r7, c59
    dp4 r9.y, r7, c56
    mad r5.xy, r5, r8, r9
    add r7.xyz, c15, -v4
    dp3 r2.w, r7, r7
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    rcp r3.w, c53.w
    mul r3.w, r2.w, r3.w
    mul r3.w, r3.w, r3.w
    mul r3.w, r3.w, c0.z
    mov r7.y, c53.y
    mad r7.xz, r7.y, c10.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r5.w, r5.z, -r8.x
    cmp r5.w, r5.w, c1.w, c1.z
    mad r7.xz, r7.y, c10.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c9.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c9.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c8.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c8.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c7.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c7.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c6.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c6.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c5.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.w, c1.z
    add r5.w, r5.w, r6.w
    mad r5.xy, r7.y, c5.zwzw, r5
    texld r7, r5, s15
    add r5.x, r5.z, -r7.x
    cmp r5.x, r5.x, c1.w, c1.z
    add r5.x, r5.w, r5.x
    mad r3.w, r5.x, c0.w, r3.w
    add r2.w, r2.w, -c53.w
    cmp r5.xy, r2.w, c4, c4.zwzw
    add r2.w, r3.w, r5.y
    cmp_sat r2.w, r2.w, r3.w, r5.x
    mul r5.xyz, r6, r4.w
    mul r5.xyz, r2.w, r5
    mul r6.xyz, r6, r1.z
    mul r6.xyz, r2.w, r6
    mul r5.xyz, r5, c17.w
    mad r2.xyz, r2, r1.x, r6
    dp3 r1.x, r4, r3
    add r1.x, -r1_abs.x, c1.w
    mul r1.x, r1.x, r1.x
    mul r1.x, r1.x, r1.x
    mad_sat r1.x, r1.x, c2.y, c2.y
    mul r1.x, r1.y, r1.x
    mov r2.w, c1.w
    mul r0, r0, r2
    mad r0.xyz, r1.x, r5, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c1.w
    add r1.xy, -r1.w, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c1.w
    dp3 r1.x, r0, c3
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c3.w
    pow r2.w, r0_abs.x, r1.y
    mul r0.xyz, r2, r2.w
    rcp r0.w, c41.x
    mul_sat r0.w, r0.w, v1.w
    add r1.x, -c41.x, v1.w
    add r1.y, -c41.x, c41.y
    rcp r1.y, r1.y
    mul_sat r1.x, r1.x, r1.y
    lrp r3.x, c41.w, r0.w, r1.x
    add r0.w, r3.x, c41.z
    mov r3.xyz, c43
    add r1.yzw, -r3.xxyz, c42.xxyz
    mad r1.xyz, r1.x, r1.yzww, c43
    mad r1.xyz, r2, -r2.w, r1
    mad oC0.xyz, r0.w, r1, r0
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	if_ne v9.y, c127.y
		rcp r20.z, c128.x
		mul r20.x, v9.w, r20.z
		mul r20.y, c128.y, r20.z
		log r20.x, r20.x
		log r20.y, r20.y
		rcp r20.y, r20.y
	else
		mov r20.x, v9.z
		rcp r20.y, v9.w
	endif
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 182 instruction slots used (16 texture, 166 arithmetic)
