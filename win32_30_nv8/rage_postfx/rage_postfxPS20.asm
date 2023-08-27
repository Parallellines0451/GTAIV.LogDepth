//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferTextureSampler3;
//   sampler2D HDRSampler;
//   float4 dofProj;
//   float4 gDepthFxParams;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   gDepthFxParams         c16      1
//   globalFogParams        c41      1
//   globalFogColor         c42      1
//   globalFogColorN        c43      1
//   dofProj                c66      1
//   GBufferTextureSampler3 s0       1
//   HDRSampler             s1       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0
    def c0, 0.212500006, 0.715399981, 0.0720999986, 0
    def c1, -1, 1, 0, 1.00000001e-007
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    add r0.x, -c16.z, c16.w
    rcp r0.x, r0.x
    add r0.y, -c66.x, c66.y
    rcp r0.y, r0.y
    mul r0.z, r0.y, c66.y
    mul r0.z, r0.z, -c66.x
    texld r1, v0, s0
	// ----------------------------------------------------------------- Log2Linear -----------------------------------------------------------------
	if_ne r1.x, c127.y
		rcp r20.x, c128.x
		mul r20.x, r20.x, c128.y
		pow r20.x, r20.x, r1.x
		mul r20.x, r20.x, c128.x	// W_clip
		
		add r20.y, r20.x, -c128.x
		add r20.z, c128.y, -c128.x
		mul r20.y, r20.y, c128.y
		mul r20.z, r20.z, r20.x
		rcp r20.z, r20.z
		mul r20.w, r20.y, r20.z		// Linear depth
		
		min r1, r20.w, c127.x		// FP error hack
	endif
	// ----------------------------------------------------------------------------------------------------------------------------------------------
    mad r0.y, c66.y, -r0.y, r1.x
    add r0.w, r1.x, c1.x
    rcp r0.y, r0.y
    mad r1.x, r0.z, -r0.y, c16.w
    mul_sat r0.x, r0.x, r1.x
    add r0.x, -r0.x, c1.y
    cmp r1.x, r0.w, c1.z, c1.y
    mov r2.xz, c1
    cmp r0.w, r0.w, c41.w, r2.z
    mul r0.x, r0.x, r1.x
    add r1.yz, r2.x, c16.xxyw
    mad r1.y, r0.x, r1.y, c1.y
    mul r0.x, r0.x, r1.z
    texld r2, v0, s1
    dp3 r1.z, r2, c0
    lrp r3.xyz, r1.y, r2, r1.z
    add r1.y, r1.z, c1.w
    pow r2.x, r1_abs.y, r0.x
    mul r1.yzw, r3.xxyz, r2.x
    mad r2.xyz, r3, -r2.x, c43
    mad r1.yzw, r0.w, r2.xxyz, r1
    mad r0.x, r0.z, r0.y, -c41.x
    mul r0.y, r0.z, r0.y
    add r0.z, -c41.x, c41.y
    rcp r0.z, r0.z
    mul_sat r0.x, r0.x, r0.z
    mov r2.xyz, c43
    add r2.xyz, -r2, c42
    mad r2.xyz, r0.x, r2, c43
    add r2.xyz, -r1.yzww, r2
    rcp r0.z, c41.x
    mul_sat r0.y, r0.y, r0.z
    lrp r2.w, c41.w, r0.y, r0.x
    add r0.x, r2.w, c41.z
    mul r0.x, r1.x, r0.x
    mad oC0.xyz, r0.x, r2, r1.yzww
    mov oC0.w, c1.y

// approximately 46 instruction slots used (2 texture, 44 arithmetic)
