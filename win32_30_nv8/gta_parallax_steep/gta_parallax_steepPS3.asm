//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
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
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 6.3058430895e-43 // 450
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 9.99999975e-006, 0, 1, -0.125
    def c1, 0.176470593, -1, -0, -0.5
    def c2, -0.00200000009, 0.001953125, 0, 0
    defi i0, 8, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_texcoord7 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
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
    texld r0, r1.zwzw, s0
    mul r0.w, r0.w, v4.w
    mul r1.x, r0.w, c39.x
    mov r3.xyz, c1
    mad r0.w, r0.w, -c39.x, r3.x
    cmp r4, r0.w, c1.y, c1.z
    texkill r4
    add r1.yz, r2, c1.w
    mul r1.yz, r1, c74.x
    dp2add r0.w, r2.yzzw, -r2.yzzw, c0.z
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mul r4.xyz, r1.y, v2
    mad r4.xyz, v1, r0.w, r4
    mad r1.yzw, r1.z, v3.xxyz, r4.xxyz
    add r1.yzw, r1, c0.x
    dp3 r0.w, r1.yzww, r1.yzww
    rsq r0.w, r0.w
    dp2add r2.x, r2.yzzw, r2.yzzw, c2.x
    cmp r2.x, r2.x, -c1.y, -c1.z
    mul oC0.xyz, r0, r2.x
    mul oC2.z, r2.x, v4.x
    mul r0.x, r2.x, c73.x
    mad r0.yzw, r1, r0.w, c0.z
    mul oC1.xyz, r0.yzww, -c1.w
    mul oC2.x, r0.x, -c1.w
    mov r0.y, c2.y
    mul r0.x, r0.y, c72.x
    rsq r0.x, r0.x
    rcp oC2.y, r0.x
    mov oC0.w, r1.x
    mov oC1.w, r1.x
    mov oC2.w, r1.x
    mul oC3, -r3.yzzz, c52.x
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

// approximately 58 instruction slots used (3 texture, 55 arithmetic)
