//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float4 gDepthFxParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 gLightColB;
//   float4 gLightColG;
//   float4 gLightColR;
//   float4 gLightConeOffset;
//   float4 gLightConeOffset2;
//   float4 gLightConeScale;
//   float4 gLightConeScale2;
//   float4 gLightDir2X;
//   float4 gLightDir2Y;
//   float4 gLightDir2Z;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
//   float4 gLightPointColB;
//   float4 gLightPointColG;
//   float4 gLightPointColR;
//   float4 gLightPointFallOff;
//   float4 gLightPointPosX;
//   float4 gLightPointPosY;
//   float4 gLightPointPosZ;
//   float4 gLightPosX;
//   float4 gLightPosY;
//   float4 gLightPosZ;
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
//   gLightPosX           c19      1
//   gLightPosY           c20      1
//   gLightPosZ           c21      1
//   gLightDirX           c22      1
//   gLightDirY           c23      1
//   gLightDirZ           c24      1
//   gLightFallOff        c25      1
//   gLightConeScale      c26      1
//   gLightConeOffset     c27      1
//   gLightColR           c29      1
//   gLightColG           c30      1
//   gLightColB           c31      1
//   gLightPointPosX      c32      1
//   gLightPointPosY      c33      1
//   gLightPointPosZ      c34      1
//   gLightPointColR      c35      1
//   gLightPointFallOff   c36      1
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
//   gLightPointColG      c64      1
//   gLightPointColB      c65      1
//   matDiffuseColor      c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   specMapIntMask       c72      1
//   reflectivePowerED    c73      1
//   LuminanceConstants   c74      1
//   TextureSampler       s0       1
//   SpecSampler          s1       1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 9.99999975e-006, 2.5, 0.00499999989, -0.25
    def c1, 10, 9.99999975e-005, 1, 0
    def c2, -0.5, 0.5, 1.33333337, 9.99999975e-005
    def c3, 1.5, -0.326211989, -0.405809999, 0.0833333358
    def c4, -0.791558981, -0.597710013, -0.100000001, 1.11111116
    def c5, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c6, 1, -1, 0, -0
    def c7, 0.896420002, 0.412458003, -0.321940005, -0.932614982
    def c8, 0.185461, -0.893123984, 0.507430971, 0.0644249991
    def c9, 0.473434001, -0.480026007, 0.519456029, 0.767022014
    def c10, -0.203345001, 0.620715976, 0.962339997, -0.194983006
    def c11, -0.840143979, -0.0735799968, -0.69591397, 0.457136989
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_color v3
    dcl_texcoord2 v4.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s15
    dp3 r0.x, c14, v4
    add r0.xyz, -r0.x, -c54
    cmp r0.yzw, r0.xxyz, c1.z, c1.w
    mov r0.x, c1.z
    dp4 r1.x, r0, c57
    dp4 r1.y, r0, c58
    dp4 r2.x, r0, c59
    dp4 r2.y, r0, c56
    mul r0.xyz, c61.xyww, v4.y
    mad r0.xyz, v4.x, c60.xyww, r0
    mad r0.xyz, v4.z, c62.xyww, r0
    add r0.xyz, r0, c63.xyww
    mad r0.xy, r0, r1, r2
    mov r1.y, c53.y
    mad r1.xz, r1.y, c3.yyzw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r0.w, r0.z, -r2.x
    cmp r0.w, r0.w, c1.z, c1.w
    mad r1.xz, r1.y, c11.xyyw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c11.zyww, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c10.xyyw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c10.zyww, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c9.xyyw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c9.zyww, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c8.xyyw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c8.zyww, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c7.xyyw, r0.xyyw
    texld r2, r1.xzzw, s15
    add r1.x, r0.z, -r2.x
    cmp r1.x, r1.x, c1.z, c1.w
    add r0.w, r0.w, r1.x
    mad r1.xz, r1.y, c7.zyww, r0.xyyw
    mad r0.xy, r1.y, c4, r0
    texld r2, r0, s15
    add r0.x, r0.z, -r2.x
    cmp r0.x, r0.x, c1.z, c1.w
    texld r1, r1.xzzw, s15
    add r0.y, r0.z, -r1.x
    cmp r0.y, r0.y, c1.z, c1.w
    add r0.y, r0.w, r0.y
    add r0.x, r0.x, r0.y
    add r0.yzw, c15.xxyz, -v4.xxyz
    dp3 r0.y, r0.yzww, r0.yzww
    rsq r0.y, r0.y
    rcp r0.y, r0.y
    rcp r0.z, c53.w
    mul r0.z, r0.y, r0.z
    add r0.y, r0.y, -c53.w
    cmp r0.yw, r0.y, c6.xxzy, c6.xzzw
    mul r0.z, r0.z, r0.z
    mul r0.z, r0.z, c3.x
    mad r0.x, r0.x, c3.w, r0.z
    add r0.z, r0.w, r0.x
    cmp_sat r0.x, r0.z, r0.x, r0.y
    mul r0.yzw, c18.w, c18.xxyz
    add r1.xyz, c0.x, v1
    nrm r2.xyz, r1
    dp3 r1.x, r2, -c17
    add r1.x, r1.x, c0.w
    mul_sat r1.x, r1.x, c2.z
    mul r1.xyz, r0.yzww, r1.x
    mul r1.xyz, r0.x, r1
    dp3 r1.w, v3, c74
    mul r1.w, r1.w, c39.z
    mad_sat r2.w, r2.z, c2.x, c2.y
    mov r3.xyz, c38
    mad r3.xyz, r3, r2.w, c37
    mad r1.xyz, r3, r1.w, r1
    add r3, c19, -v4.x
    mul r4, r3, r3
    add r5, c20, -v4.y
    mad r4, r5, r5, r4
    add r6, c21, -v4.z
    mad r4, r6, r6, r4
    mov r7.z, c1.z
    mad r8, r4, -c25, r7.z
    add r4, r4, c0.x
    max r9, r8, c1.w
    mul r8, r9, r9
    mad r8, r8, r8, c4.z
    mul r9, r8, c4.w
    cmp r8, r8, r9, c1.w
    mul r9, r2.x, r3
    mad r9, r5, r2.y, r9
    mad r9, r6, r2.z, r9
    mul r8, r8, r9
    rsq r9.x, r4.x
    rsq r9.y, r4.y
    rsq r9.z, r4.z
    rsq r9.w, r4.w
    mul_sat r4, r8, r9
    mul r8, r3, -c22
    mad r8, r5, -c23, r8
    mad r8, r6, -c24, r8
    mul r8, r9, r8
    mov r10, c26
    mad_sat r8, r8, r10, c27
    mul r4, r4, r8
    dp4 r8.x, c29, r4
    dp4 r8.y, c30, r4
    dp4 r8.z, c31, r4
    add r1.xyz, r1, r8
    add r8, c32, -v4.x
    mul r10, r8, r8
    add r11, c33, -v4.y
    mad r10, r11, r11, r10
    add r12, c34, -v4.z
    mad r10, r12, r12, r10
    mad r13, r10, -c36, r7.z
    add r10, r10, c0.x
    max r14, r13, c1.w
    mul r13, r14, r14
    mad r13, r13, r13, c4.z
    mul r14, r13, c4.w
    cmp r13, r13, r14, c1.w
    mul r14, r2.x, r8
    mad r14, r11, r2.y, r14
    mad r14, r12, r2.z, r14
    mul r13, r13, r14
    rsq r14.x, r10.x
    rsq r14.y, r10.y
    rsq r14.z, r10.z
    rsq r14.w, r10.w
    mul_sat r10, r13, r14
    mul r13, r8, -c67
    mad r13, r11, -c68, r13
    mad r13, r12, -c69, r13
    mul r13, r14, r13
    mov r15, c70
    mad_sat r13, r13, r15, c71
    mul r10, r10, r13
    dp4 r13.x, c35, r10
    dp4 r13.y, c64, r10
    dp4 r13.z, c65, r10
    add r1.xyz, r1, r13
    texld r13, v0, s0
    mul r13.xyz, r13, c66
    mul r13, r13, v3
    mov r1.w, c1.z
    mul r1, r1, r13
    mul oC0.w, r1.w, c39.x
    add r7.xyw, c0.x, v2.xyzz
    nrm r13.xyz, r7.xyww
    dp3 r1.w, -r13, r2
    add r1.w, r1.w, r1.w
    mad r7.xyw, r2.xyzz, -r1.w, -r13.xyzz
    dp3 r1.w, r13, r2
    add r1.w, -r1_abs.w, c1.z
    mul r1.w, r1.w, r1.w
    mul r1.w, r1.w, r1.w
    mad_sat r1.w, r1.w, c2.y, c2.y
    mul r2, r3, r7.x
    mad r2, r7.y, r5, r2
    mad r2, r7.w, r6, r2
    mul r2, r9, r2
    log r3.x, r2_abs.x
    log r3.y, r2_abs.y
    log r3.z, r2_abs.z
    log r3.w, r2_abs.w
    texld r2, v0, s1
    mul r2.w, r2.w, c73.x
    dp3 r2.x, r2, c72
    mul r2.x, r2.x, c73.x
    mul r2.x, r2.x, c0.z
    mul r1.w, r1.w, r2.x
    mul r2.x, r2.w, c0.y
    mad r2.y, r2.w, c1.x, c1.y
    mul r3, r3, r2.x
    exp r5.x, r3.x
    exp r5.y, r3.y
    exp r5.z, r3.z
    exp r5.w, r3.w
    mul r3, r4, r5
    dp4 r4.x, c29, r3
    dp4 r4.y, c30, r3
    dp4 r4.z, c31, r3
    dp3_sat r2.z, -c17, r7.xyww
    add r2.z, r2.z, c2.w
    pow r3.x, r2.z, r2.y
    mul r0.yzw, r0, r3.x
    mul r0.xyz, r0.x, r0.yzww
    mad r0.xyz, r0, c17.w, r4
    mul r3, r8, r7.x
    mad r3, r7.y, r11, r3
    mad r3, r7.w, r12, r3
    mul r3, r14, r3
    log r4.x, r3_abs.x
    log r4.y, r3_abs.y
    log r4.z, r3_abs.z
    log r4.w, r3_abs.w
    mul r2, r2.x, r4
    exp r3.x, r2.x
    exp r3.y, r2.y
    exp r3.z, r2.z
    exp r3.w, r2.w
    mul r2, r10, r3
    dp4 r3.x, c35, r2
    dp4 r3.y, c64, r2
    dp4 r3.z, c65, r2
    add r0.xyz, r0, r3
    mad r0.xyz, r1.w, r0, r1
    dp3 r0.w, r0, c5
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    add r1.y, c16.w, -v1.w
    mul_sat r1.x, r1.x, r1.y
    add r1.x, -r1.x, c1.z
    add r1.yz, -r7.z, c16.xxyw
    mad r1.y, r1.x, r1.y, c1.z
    mul r1.x, r1.x, r1.z
    lrp r2.xyz, r1.y, r0, r0.w
    add r0.x, r0.w, c5.w
    pow r2.w, r0_abs.x, r1.x
    mul r0.xyz, r2, r2.w
    add r0.w, -c41.x, c41.y
    rcp r0.w, r0.w
    add r1.x, -c41.x, v1.w
    mul_sat r0.w, r0.w, r1.x
    mov r1.xyz, c43
    add r1.xyz, -r1, c42
    mad r1.xyz, r0.w, r1, c43
    mad r1.xyz, r2, -r2.w, r1
    rcp r1.w, c41.x
    mul_sat r1.w, r1.w, v1.w
    lrp r2.x, c41.w, r1.w, r0.w
    add r0.w, r2.x, c41.z
    mad oC0.xyz, r0.w, r1, r0
	// -------- Encode depth as log --------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 267 instruction slots used (14 texture, 253 arithmetic)
