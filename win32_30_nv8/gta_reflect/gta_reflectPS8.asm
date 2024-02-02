//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 globalFogColor;
//   float4 globalFogParams;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   gDirectionalLight  c17      1
//   gDirectionalColour c18      1
//   gLightAmbient0     c37      1
//   gLightAmbient1     c38      1
//   globalScalars      c39      1
//   globalFogParams    c41      1
//   globalFogColor     c42      1
//   TextureSampler     s0       1
//   StippleTexture     s10      1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 7.4549078302e-43 // 532
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 9.99999975e-006, -0.5, 0.5, -0.25
    def c1, 1.33333337, 1, 3.99600005, 4
    def c2, 0.125, 0, -1, -0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_color v2.xw
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s10
    texld r0, v0, s0
    add r1.xyz, c0.x, v1
    nrm r2.xyz, r1
    mul r0.w, r0.w, v2.w
    mad_sat r1.x, r2.z, c0.y, c0.z
    mov r3.xyz, c38
    mad r1.xyz, r3, r1.x, c37
    mul r3.xyz, c18.w, c18
    dp3 r1.w, r2, -c17
    add r1.w, r1.w, c0.w
    mul_sat r1.w, r1.w, c1.x
    mul r2.xyz, r3, r1.w
    mad r1.xyz, r1, v2.x, r2
    mov r1.w, c1.y
    mul r2, r0, r1
    mul r0.w, r2.w, c39.x
    mov_sat r1.w, r0.w
    mul r1.w, r1.w, c1.z
    frc r2.w, r1.w
    mul r3.x, r2.w, c1.w
    frc r3.y, r3.x
    add r3.x, r3.x, -r3.y
    add r3.y, r1.w, -r2.w
    mul r3.zw, c2.x, vPos.xyxy
    frc r3.zw, r3_abs
    cmp r3.zw, vPos.xyxy, r3, -r3
    mul r3.zw, r3, -c0.w
    mad r3.xy, r3, -c0.w, r3.zwzw
    mov r3.zw, c2.y
    texldl r3, r3, s10
    cmp r3, -r3.y, c2.z, c2.w
    texkill r3
    add r1.w, -c41.x, v1.w
    add r2.w, -c41.x, c41.y
    rcp r2.w, r2.w
    mul_sat r1.w, r1.w, r2.w
    mad r0.xyz, r0, -r1, c42
    mad oC0.xyz, r1.w, r0, r2
    mov oC0.w, r0.w
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

// approximately 42 instruction slots used (3 texture, 39 arithmetic)
