//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D TextureSampler;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   TextureSampler s0       1
//

    ps_3_0
    def c0, 1, 0, -0.125, 0
    dcl_texcoord v0.xy
    dcl_texcoord9 v9
    dcl_2d s0
    mul r0, c0.xxyy, v0.xyxx
    texldl r0, r0, s0
    add r1.x, r0.w, c0.z
    cmp r1, r1.x, -c0.y, -c0.x
    texkill r1
    mov oC0, r0
	// ----------- Linear to Log -----------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 7 instruction slots used (2 texture, 5 arithmetic)
