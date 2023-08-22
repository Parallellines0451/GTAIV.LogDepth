//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferTextureSampler3;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldView;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScreenSize;
//   float2 poisson12[12];
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   gWorldView             c4       3
//   gWorldViewProj         c8       4
//   gViewInverse           c12      4
//   globalScreenSize       c44      1
//   poisson12              c208    12
//   GBufferTextureSampler3 s0       1
//

    vs_3_0
    def c127, 0.9999999, 1, 0, 0
    def c0, 0.707106769, 1, 0.5, 0.100000001
    def c1, 1, 0, 2, -0.996999979
    def c2, 0.5, -0.5, 0.0833333358, 0.00999999978
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_2d s0
    dcl_position o0
	dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2.xyz
    mov r0.xyz, v3
    add r0.xyz, -r0, v0
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mul r0.w, r0.w, c0.x
    add r1.xyz, -c15, v3
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    if_lt r1.w, r0.w
      mov r2.x, c4.z
      mov r2.y, c5.z
      mov r2.z, c6.z
      dp3 r1.x, r2, r1
      slt r1.y, -r1.x, r0.w
      rcp r0.w, r0.w
      mad r0.w, -r1.x, r0.w, c0.y
      mul_sat r3.w, r0.w, c0.z
      slt r0.w, -r1.x, c0.w
      add r1.x, r1.x, c0.w
      mul r1.xzw, r2.xyyz, r1.x
      mad r3.xyz, r0.w, -r1.xzww, v0
      mad r2, v0.xyzx, c1.xxxy, c1.yyyx
      lrp r4, r1.y, r3, r2
    else
      mul r1, c9, v3.y
      mad r1, v3.x, c8, r1
      mad r1, v3.z, c10, r1
      add r1, r1, c11
      rcp r0.w, r1.w
      mul r1.xyz, r1, r0.w
      mov r2.zw, c44
      mul r2.xy, r2.zwzw, c208
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r0.w, r1.z, r3.x
      mul r2.xy, r2.zwzw, c209
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mul r1.w, r1.w, c2.z
      mad r0.w, r0.w, c2.z, r1.w
      mul r2.xy, r2.zwzw, c210
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c211
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c212
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c213
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c214
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c215
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c216
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c217
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c218
      mad r2.xy, r2, c1.z, r1
      max r2.xy, r2, c1.w
      min r2.xy, r2, -c1.w
      mad r3.xy, r2, c2, c2.x
      mov r3.zw, c1.y
      texldl r3, r3, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r3.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r3.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r3, r20.w
	// -------------------------------------
      slt r1.w, r1.z, r3.x
      mad r0.w, r1.w, c2.z, r0.w
      mul r2.xy, r2.zwzw, c219
      mad r1.xy, r2, c1.z, r1
      max r1.xy, r1, c1.w
      min r1.xy, r1, -c1.w
      mad r2.xy, r1, c2, c2.x
      mov r2.zw, c1.y
      texldl r2, r2, s0
	// ---------- Linearize depth ----------
	rcp r20.x, c128.x
	mul r20.x, r20.x, c128.y
	pow r20.x, r20.x, r2.x
	mul r20.x, r20.x, c128.x	// W_clip
	
	add r20.y, r20.x, -c128.x
	add r20.z, c128.y, -c128.x
	mul r20.y, r20.y, c128.y
	mul r20.z, r20.z, r20.x
	rcp r20.z, r20.z
	mul r20.w, r20.y, r20.z		// Linear Z
	
	min r20.w, r20.w, c127.x	// FP error hack
	if_eq r2.x, c127.y
		mov r20.w, c127.y
	endif
	
	mov r2, r20.w
	// -------------------------------------
      slt r1.x, r1.z, r2.x
      mad r4.w, r1.x, c2.z, r0.w
      slt r0.w, c2.w, r4.w
      mad r4.xyz, r0.w, r0, v3
    endif
    mul r0, r4.y, c9
    mad r0, r4.x, c8, r0
    mad r0, r4.z, c10, r0
    add o0, r0, c11
	add o10, r0, c11
    mul r0.xyz, r4.w, v1
    mul o2.xyz, r0, v2.y
    mov o1.x, v2.x
    mov o1.y, v1.w

// approximately 166 instruction slots used (24 texture, 142 arithmetic)
