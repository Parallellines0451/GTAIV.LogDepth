//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DirtSampler;
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float3 dirtColor;
//   float dirtLevel;
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
//   dirtLevel          c73      1
//   dirtColor          c74      1
//   specMapIntMask     c75      1
//   reflectivePowerED  c76      1
//   LuminanceConstants c77      1
//   TextureSampler     s0       1
//   DirtSampler        s1       1
//   SpecSampler        s2       1
//

    ps_3_0
    def c0, 9.99999975e-006, 0.224999994, 1, 0
    def c1, 0.5, 0.37109375, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_color v2
    dcl_texcoord7 v3.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s0
    add r1.xyz, c0.x, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    texld r2, v0, s2
    mul r2.w, r2.w, c76.x
    mul r2.w, r2.w, c72.w
    dp3 r2.x, r2, c75
    mul r2.x, r2.x, c76.x
    mul r2.x, r2.x, c0.y
    min r3.x, r2.x, c0.z
    mul r0.xyz, r0, c66
    mul r0, r0, v2
    dp3 r2.x, v2, c77
    mul oC2.z, r2.x, c39.z
    mov r3.zw, c0
    if_lt -c73.x, r3.w
      texld r4, v3, s1
      mul r2.x, r4.x, c73.x
      mad r5.x, r4.x, -c73.x, r3.z
      lrp r5.yzw, r2.x, c74.xxyz, r0.xxyz
      mad r6, r0.xxyz, c0.wzzz, c0.zwww
      cmp r4, -r4.x, r6, r5
      mov r0.xyz, r4.yzww
    else
      mov r4.x, c0.z
    endif
    mul r2.x, r3.x, r4.x
    mul r2.x, r2.x, c72.w
    mad r1.xyz, r1, r1.w, c0.z
    mul oC1.xyz, r1, c1.x
    mul oC2.x, r2.x, c1.x
    mul r1.x, r2.w, c1.y
    rsq r1.x, r1.x
    rcp oC2.y, r1.x
    mul r0.w, r0.w, c39.x
    mov oC0, r0
    mov oC1.w, r0.w
    mov oC2.w, r0.w
    mul oC3, r3.zwww, c52.x
	// ----------- Linear to Log -----------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 42 instruction slots used (3 texture, 39 arithmetic)
