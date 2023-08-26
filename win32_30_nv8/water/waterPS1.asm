//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DepthBufferSampler;
//   sampler2D ReflectTextureSampler;
//   sampler2D SurfaceTextureSampler;
//   float4 bottomSkyColour;
//   float4 globalScalars;
//   float4 viewProj;
//   float4 waterColour;
//   float waterReflectionScale;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   globalScalars         c39      1
//   waterColour           c66      1
//   bottomSkyColour       c72      1
//   waterReflectionScale  c73      1
//   viewProj              c74      1
//   SurfaceTextureSampler s0       1
//   ReflectTextureSampler s1       1
//   DepthBufferSampler    s2       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0
    def c0, -0.5, 0.5, 0.25, 0
    def c1, 0.00200000009, 0.0511999987, 9.99999975e-006, 1
    def c2, 0.00039999999, 1, 0.00999999978, 0.256000012
    def c3, 0.0299999993, 1, -1, 0.125
    def c4, 0.600000024, 0.200000003, 0, 0
    def c5, 1.00001001, 1, 0, 9.99999975e-006
    dcl_texcoord v0.xyz
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    mul r0.xy, c1.x, v2
    texld r0, r0, s0
    add r0.xy, r0.zwzw, c0.x
    mul r0.xy, r0, c1.y
    mov r1.xyz, v2
    add r1.xyz, r1, -v3
    dp3 r0.z, r1, r1
    add r1.xyz, r1, c1.z
    nrm r2.xyz, r1
    mad r0.z, r0.z, -c2.x, c2.y
    max r1.x, r0.z, c0.w
    add r0.z, -r1.x, c1.w
    mul r0.xy, r0, r0.z
    rcp r0.z, v1.z
    mul r0.z, r1.x, r0.z
    mad r0.xy, v1, r0.z, r0
    mul r0.zw, c2.z, v2.xyxy
    texld r1, r0.zwzw, s0
    add r0.zw, r1, c0.x
    mad r0.xy, r0.zwzw, c2.w, r0
    add r0.xy, r0, c1.z
    mov r0.z, c5.x
    nrm r1.xyz, r0
    mad r0.xyz, r2, c5.yyzw, c5.w
    dp3 r0.w, r2, r1
    dp3 r0.z, r0, r0
    rsq r0.z, r0.z
    mul r2.xy, r0, r0.z
    mov r2.zw, c3.xyyz
    mul r1, r1.xyyx, r2.yyxz
    mad r0.xy, r1.zwzw, r2.wxzw, r1
    mul r0.z, c3.x, v0.z
    rcp r0.z, r0.z
    mul r0.z, r0.z, c0.y
    rcp r1.x, v0.z
    mul r1.xyz, r1.x, v0.xyxw
    mad r1.xyz, r1, c0.xxyw, c0.y
    mad r2.xy, r0, r0.z, r1
    texld r1, r1.zyzw, s2
	// ----------- Log to Linear -----------
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
		
		min r1, r20.w, c127.x	// FP error hack
	endif
	// -------------------------------------
    mov r2.zw, c0.w
    texldl r2, r2, s1
    mul r0.xyz, r2, c73.x
    add r1.y, -c74.x, c74.y
    rcp r1.y, r1.y
    mad r1.x, c74.y, -r1.y, r1.x
    mul r1.y, r1.y, c74.y
    mul r1.y, r1.y, c74.x
    rcp r1.x, r1.x
    mad r1.x, -r1.y, r1.x, -v0.z
    mov r1.yz, c0
    mul r1.z, r1.z, c66.w
    mul r1.z, r1.x, r1.z
    cmp r1.x, r1.x, r1.z, c0.w
    pow r2.x, r1_abs.x, c0.z
    add_sat r1.x, r2.x, c3.w
    rcp r1.z, r1.x
    mul r0.xyz, r0, r1.z
    add r1.z, r0.w, c1.w
    cmp r0.w, -r0.w, r1.z, c1.w
    mul r1.z, r0_abs.w, r0_abs.w
    mul r1.z, r1.z, r1.z
    mul r0.w, r0_abs.w, r1.z
    mad r0.w, r0.w, c4.x, c4.y
    mul r0.w, r1.x, r0.w
    mov oC0.w, r1.x
    mul r0.w, r0.w, c0.y
    mul r0.xyz, r0, r0.w
    mul r0.w, r1.y, c72.w
    mad r0.xyz, c66, r0.w, r0
    mul oC0.xyz, r0, c39.y
	// ----------- Linear to Log -----------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 77 instruction slots used (5 texture, 72 arithmetic)
