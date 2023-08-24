//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorldViewProj c8       4
//

    vs_3_0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_color o2
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
	mov o0, r0
	// ----- Derive proper W_clip -----
	add r20.x, c227.y, -c227.x
	mul r20.y, c227.x, c227.y
	mad r20.z, r0.z, r20.x, r20.y
	rcp r20.w, c227.y
	mul o10.w, r20.z, r20.w
	// --------------------------------
    mov o1.xy, v2
    mov o2, v1

// approximately 6 instruction slots used
