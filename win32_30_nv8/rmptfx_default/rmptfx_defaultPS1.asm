//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D DiffuseTexSampler;
//   float HybridAdd;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   HybridAdd         c64      1
//   DiffuseTexSampler s0       1
//

    ps_3_0
    def c0, 1, 0, 0, 0
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord2 v2.x
    dcl_texcoord3 v3.x
    dcl_texcoord9 v9
    dcl_2d s0
    texld r0, v1, s0
    texld r1, v1.zwzw, s0
    mov_sat r2.x, v2.x
    lrp r3, r2.x, r1, r0
    mul r0, r3, v0
    add r1.x, c0.x, -v3.x
    mul r1.w, r0.w, r1.x
    mul r1.xyz, r0.w, r0
    abs r2.x, c64.x
    cmp oC0, -r2.x, r0, r1
	// ----------- Linear to Log -----------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 10 instruction slots used (2 texture, 8 arithmetic)
