//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 globalScalars;
//   float parallaxScaleBias;
//   float specularColorFactor;
//   float specularFactor;
//   float4 stencil;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   globalScalars       c39      1
//   stencil             c52      1
//   parallaxScaleBias   c66      1
//   specularFactor      c72      1
//   specularColorFactor c73      1
//   bumpiness           c74      1
//   TextureSampler      s0       1
//   BumpSampler         s1       1
//   StippleTexture      s10      1
//

    ps_3_0
    def c0, 9.99999975e-006, 0, 1, -0.125
    def c1, -1, -0, -0.5, -0.00200000009
    def c2, 0.001953125, 0, 0, 0
    def c3, 3.99600005, 4, 0.25, 0
    defi i0, 8, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_texcoord7 v5.xyz
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    texld r0, v0, s1
    add r1.xyz, c0.x, v5
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul r1.xy, r1, r0.z
    mul r1.xy, -r1, c66.x
    mov r1.zw, v0.xyxy
    mov r2.yz, r0.xxyw
    mov r2.x, c0.z
    mov r2.w, r0.w
    rep i0
      add r0.z, -r2.x, r2.w
      add r3.x, r2.x, c0.w
      mad r4.xy, r1, -c0.w, r1.zwzw
      texld r5, r4, s1
      cmp r1.zw, r0.z, r1, r4.xyxy
      mov r3.yzw, r5.xxyw
      cmp r2, r0.z, r2, r3
    endrep
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c3.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c3.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, -c0.w, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c3.z
    mad r0.xy, r1, c3.z, r0
    mov r0.zw, c3.w
    texldl r0, r0, s10
    cmp r0, -r0.y, c1.x, c1.y
    texkill r0
    texld r0, r1.zwzw, s0
    add r1.xy, r2.yzzw, c1.z
    mul r1.xy, r1, c74.x
    dp2add r1.z, r2.yzzw, -r2.yzzw, c0.z
    rsq r1.z, r1.z
    rcp r1.z, r1.z
    mul r3.xyz, r1.x, v2
    mad r1.xzw, v1.xyyz, r1.z, r3.xyyz
    mad r1.xyz, r1.y, v3, r1.xzww
    add r1.xyz, r1, c0.x
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    dp2add r2.x, r2.yzzw, r2.yzzw, c1.w
    cmp r2.x, r2.x, -c1.x, -c1.y
    mul oC0.xyz, r0, r2.x
    mul oC2.z, r2.x, v4.x
    mul r0.x, r2.x, c73.x
    mul r0.y, r0.w, v4.w
    mad r1.xyz, r1, r1.w, c0.z
    mul oC1.xyz, r1, -c1.z
    mul oC2.x, r0.x, -c1.z
    mov r0.x, c72.x
    mul r0.x, r0.x, c2.x
    rsq r0.x, r0.x
    rcp oC2.y, r0.x
    mul r0.x, r0.y, c39.x
    mov oC0.w, r0.x
    mov oC1.w, r0.x
    mov oC2.w, r0.x
    mov r0.xy, c1
    mul oC3, -r0.xyyy, c52.x
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 71 instruction slots used (5 texture, 66 arithmetic)
