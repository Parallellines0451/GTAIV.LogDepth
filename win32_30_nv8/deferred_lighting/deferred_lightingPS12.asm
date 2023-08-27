//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferStencilTextureSampler;
//   sampler2D GBufferTextureSampler0;
//   sampler2D GBufferTextureSampler1;
//   sampler2D GBufferTextureSampler3;
//   float4 gDeferredLightColourAndIntensity;
//   float gDeferredLightConeOffset;
//   float gDeferredLightConeScale;
//   float3 gDeferredLightDirection;
//   float gDeferredLightInvSqrRadius;
//   float3 gDeferredLightPosition;
//   float4 gDeferredProjParams;
//   row_major float4x4 gViewInverse;
//   float4 gooDeferredLightScreenSize;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   gViewInverse                     c12      4
//   gDeferredLightPosition           c66      1
//   gDeferredLightDirection          c72      1
//   gDeferredLightInvSqrRadius       c73      1
//   gDeferredLightConeOffset         c74      1
//   gDeferredLightConeScale          c75      1
//   gDeferredLightColourAndIntensity c76      1
//   gooDeferredLightScreenSize       c77      1
//   gDeferredProjParams              c78      1
//   GBufferTextureSampler0           s0       1
//   GBufferTextureSampler1           s1       1
//   GBufferTextureSampler3           s2       1
//   GBufferStencilTextureSampler     s4       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0
    def c0, 0.50999999, 2, -0.999989986, 255
    def c1, 255, -128, -0, -7.9000001
    def c2, 9.99999975e-006, 1, -0.333333343, 1.5
    def c3, -0.200000003, 1.25, 0, 0
    dcl_texcoord v0
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    add r0.xy, c0.x, vPos
    mul r0.xy, r0, c77.zwzw
    texld r1, r0, s2
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
    mad r0.z, r1.x, c78.z, -c78.w
    mul r0.z, r0.z, v0.w
    rcp r0.z, r0.z
    mad r1.xyz, v0, -r0.z, c15
    add r1.xyz, -r1, c66
    add r2.xyz, r1, c2.x
    dp3 r0.z, r1, r1
    mov r1.y, c2.y
    mad_sat r0.z, r0.z, -c73.x, r1.y
    mad r0.z, r0.z, r0.z, c2.z
    nrm r1.xyz, r2
    texld r2, r0, s1
    mad r2.xyz, r2, c0.y, c0.z
    nrm r3.xyz, r2
    dp3 r0.w, r3, r1
    dp3 r1.x, r1, -c72
    add r1.x, r1.x, -c74.x
    mul_sat r1.x, r1.x, c75.x
    add r0.w, r0.w, c3.x
    mul_sat r0.w, r0.w, c3.y
    mul r1.y, r0.z, c2.w
    mul r1.x, r1.x, r1.y
    mul r0.w, r0.w, r1.x
    mul r1.xyz, c76.w, c76
    mul r1.xyz, r0.w, r1
    texld r2, r0, s0
    texld r3, r0, s4
    mul r0.xyw, r1.xyzz, r2.xyzz
    cmp r0.xyz, r0.z, r0.xyww, -c1.z
    mad r1.x, r3.x, c1.x, c1.y
    cmp r1.x, r1.x, c1.y, c1.z
    mad r1.x, r3.x, c0.w, r1.x
    add r1.x, r1.x, c1.w
    mov r0.w, c2.y
    cmp oC0, r1.x, -c1.z, r0
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 42 instruction slots used (4 texture, 38 arithmetic)
