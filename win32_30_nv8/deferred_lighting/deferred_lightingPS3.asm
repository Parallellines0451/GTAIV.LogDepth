//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferTextureSampler0;
//   sampler2D GBufferTextureSampler1;
//   sampler2D GBufferTextureSampler2;
//   sampler2D GBufferTextureSampler3;
//   sampler2D ParabSampler;
//   float4 dReflectionParams;
//   float4 gDeferredProjParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   gDirectionalLight      c17      1
//   gDirectionalColour     c18      1
//   gLightAmbient0         c37      1
//   gLightAmbient1         c38      1
//   globalScalars          c39      1
//   gDeferredProjParams    c66      1
//   dReflectionParams      c72      1
//   GBufferTextureSampler0 s0       1
//   GBufferTextureSampler1 s1       1
//   GBufferTextureSampler2 s2       1
//   GBufferTextureSampler3 s4       1
//   ParabSampler           s5       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0
    def c0, 512, 4, 1, 0
    def c1, 0.99609375, 7.96875, 63.75, 0.25
    def c2, 256, -127.999992, 9.99999975e-006, 1.33333337
    def c3, -0.5, 0.5, 0.0199999996, 0.00999999978
    def c4, 0.75, 0.25, 5, 10
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    texld r0, v0, s1
    mul r1.xyz, r0.w, c1
    frc r1.xyz, r1
    add r2.xyz, r1, r1
    mad r2.xy, r1.yzzw, -c1.w, r2
    mad r0.xyz, r0, c2.x, r2
    add r0.xyz, r0, c2.y
    nrm r1.xyz, r0
    texld r0, v0, s4
	// ----------- Log to Linear -----------
	if_ne r0.x, c127.y
		rcp r20.x, c128.x
		mul r20.x, r20.x, c128.y
		pow r20.x, r20.x, r0.x
		mul r20.x, r20.x, c128.x	// W_clip
		
		add r20.y, r20.x, -c128.x
		add r20.z, c128.y, -c128.x
		mul r20.y, r20.y, c128.y
		mul r20.z, r20.z, r20.x
		rcp r20.z, r20.z
		mul r20.w, r20.y, r20.z		// Linear depth
		
		min r0, r20.w, c127.x	// FP error hack
	endif
	// -------------------------------------
    mad r0.x, r0.x, c66.z, -c66.w
    mul r0.x, r0.x, v1.w
    rcp r0.x, r0.x
    mad r0.yzw, v1.xxyz, -r0.x, c2.z
    mul r2.xyz, r0.x, v1
    nrm r3.xyz, r0.yzww
    dp3 r0.x, r3, r1
    add r0.y, r0.x, r0.x
    add r0.x, -r0_abs.x, c0.z
    mul r0.x, r0.x, r0.x
    mul r0.x, r0.x, r0.x
    mad r0.x, r0.x, c4.x, c4.y
    mad r0.yzw, r1.xxyz, -r0.y, r3.xxyz
    dp3 r1.w, r3, -r2
    mul_sat r2.xy, r1.w, c3.zwzw
    mad r0.yzw, r3.xxyz, r2.x, r0
    add r1.w, -r2.y, c0.z
    add r0.yzw, r0, c2.z
    nrm r2.xyz, r0.yzww
    mov_sat r0.y, r2.z
    add r0.y, r0.y, c0.z
    add r0.y, r0.y, r0.y
    rcp r0.y, r0.y
    mad r0.yz, r2.xxyw, r0.y, c3.y
    mul_sat r0.w, r2.z, c4.z
    add r2.xy, -r0.yzzw, c0.z
    mov r2.z, c0.w
    texld r3, v0, s2
    mul r0.y, r3.y, r3.y
    mul r0.y, r0.y, c72.x
    mul_sat r0.y, r0.y, c0.x
    mad r2.w, r0.y, -c0.y, c0.y
    texldl r2, r2, s5
    mul r0.yzw, r0.w, r2.xxyz
    mul r0.yzw, r1.w, r0
    mul r0.yzw, r3.z, r0
    mul r0.yzw, r0, c39.w
    mul r0.xyz, r0.x, r0.yzww
    add r0.w, r3.x, r3.x
    mul r0.xyz, r0, r0.w
    mul r0.xyz, r0, c4.w
    mad_sat r0.w, r1.z, c3.x, c3.y
    dp3 r1.x, r1, -c17
    add r1.x, r1.x, -c1.w
    mul_sat r1.x, r1.x, c2.w
    mov r2.xyz, c38
    mad r1.yzw, r2.xxyz, r0.w, c37.xxyz
    mul r1.yzw, r3.z, r1
    mul r2.xyz, c18.w, c18
    mad r1.xyz, r2, r1.x, r1.yzww
    texld r2, v0, s0
    mad oC0.xyz, r2, r1, r0
    mov oC0.w, c0.z

// approximately 69 instruction slots used (6 texture, 63 arithmetic)
