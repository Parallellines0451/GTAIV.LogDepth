//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D DepthTextureSampler0;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   DepthTextureSampler0 s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s15
    texld r0, v0, s15
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r0.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r0.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r0, r20.w
	// -------------------------------------
	mov oC0, r0

// approximately 1 instruction slot used (1 texture, 0 arithmetic)
