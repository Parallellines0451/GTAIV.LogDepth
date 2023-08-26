//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DiffuseTexSampler;
//   float HybridAdd;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   globalScalars     c39      1
//   HybridAdd         c66      1
//   DiffuseTexSampler s0       1
//

    ps_3_0
    def c0, 0.5, 0.212500006, 0.715399981, 0.0720999986
    def c1, -1, 1, 0, 0
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord1 v2.zw
    dcl_texcoord3 v3
    dcl_texcoord4 v4.xy
    dcl_texcoord9 v9
    dcl_2d s0
    texld r0, v1, s0
    texld r1, v1.zwzw, s0
    lrp r2, c0.x, r1, r0
    mul r0, r2, v0
    mul r1.x, c39.y, v4.y
    mul r1.yzw, r0.xxyz, r1.x
    dp3 r1.y, r1.yzww, c0.yzww
    mad r1.xzw, r0.xyyz, r1.x, -r1.y
    mov_sat r0.w, r0.w
    mad r1.xzw, v2.z, r1, r1.y
    add r2.x, c1.x, v2.w
    pow r3.x, r1_abs.y, r2.x
    mul r2.xyz, r1.xzww, r3.x
    mad r1.xyz, r1.xzww, -r3.x, v3
    mad r0.xyz, v3.w, r1, r2
    mul r1.xyz, r0.w, r0
    abs r2.x, c66.x
    add r2.y, c1.y, -v4.x
    mul r1.w, r0.w, r2.y
    cmp r0, -r2.x, r0, r1
    max oC0, r0, c1.z
	// ----------- Linear to Log -----------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 23 instruction slots used (2 texture, 21 arithmetic)
