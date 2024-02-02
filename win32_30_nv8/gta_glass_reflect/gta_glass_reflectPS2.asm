//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   globalScalars  c39      1
//   TextureSampler s0       1
//   StippleTexture s10      1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.3210773604e-43 // 237
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 3.99600005, 4, 0.125, 0.25
    def c1, 0, -1, -0, 0
    dcl_texcoord v0.xy
    dcl_color v1
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s10
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c0.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c0.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c0.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c0.w
    mad r0.xy, r1, c0.w, r0
    mov r0.zw, c1.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c1.y, c1.z
    texkill r0
    texld r0, v0, s0
    mul r0, r0, v1
    mul oC0.w, r0.w, c39.x
    mov oC0.xyz, r0
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	if_ne v9.y, c127.y
		rcp r20.z, c128.x
		mul r20.x, v9.w, r20.z
		mul r20.y, c128.y, r20.z
		log r20.x, r20.x
		log r20.y, r20.y
		rcp r20.y, r20.y
	else
		mov r20.x, v9.z
		rcp r20.y, v9.w
	endif
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 20 instruction slots used (3 texture, 17 arithmetic)
