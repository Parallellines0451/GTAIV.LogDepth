//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float4 globalScalars;
//   float3 matDiffuseColor;
//   float4 matDiffuseColor2;
//   float reflectivePowerED;
//   float3 specMapIntMask;
//   float4 stencil;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   globalScalars      c39      1
//   stencil            c52      1
//   matDiffuseColor    c66      1
//   matDiffuseColor2   c72      1
//   specMapIntMask     c73      1
//   reflectivePowerED  c74      1
//   LuminanceConstants c75      1
//   TextureSampler     s0       1
//   BumpSampler        s1       1
//   SpecSampler        s2       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 1.0299543713e-42 // 735
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 1, -0.5, 5, 9.99999975e-006
    def c1, 0.075000003, 0.37109375, 1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dp3 r0.x, v4, c75
    mul oC2.z, r0.x, c39.z
    texld r0, v0, s1
    add r0.z, -r0.w, c0.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    dp2add r0.z, r0, -r0, c0.x
    add r0.xy, r0, c0.y
    mul r0.xy, r0, c0.z
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    mul r1.xyz, r0.x, v2
    mad r0.xzw, v1.xyyz, r0.z, r1.xyyz
    mad r0.xyz, r0.y, v3, r0.xzww
    add r0.xyz, r0, c0.w
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mad r0.xyz, r0, r0.w, c0.x
    mul oC1.xyz, r0, -c0.y
    texld r0, v0, s2
    dp3 r0.x, r0, c73
    mul r0.y, r0.w, c74.x
    mul r0.y, r0.y, c72.w
    mul r0.y, r0.y, c1.y
    rsq r0.y, r0.y
    rcp oC2.y, r0.y
    mul r0.x, r0.x, c74.x
    mul r0.x, r0.x, c72.w
    mul oC2.x, r0.x, c1.x
    texld r0, v0, s0
    mul r0.xyz, r0, c66
    mul r0, r0, v4
    mov oC0.xyz, r0
    mul r0.x, r0.w, c39.x
    mov oC0.w, r0.x
    mov oC1.w, r0.x
    mov oC2.w, r0.x
    mov r0.zw, c1
    mul oC3, r0.zwww, c52.x
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

// approximately 40 instruction slots used (3 texture, 37 arithmetic)
