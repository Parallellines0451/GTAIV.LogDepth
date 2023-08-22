//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferStencilTextureSampler;
//   sampler2D GBufferTextureSampler0;
//   sampler2D GBufferTextureSampler1;
//   sampler2D GBufferTextureSampler2;
//   sampler2D GBufferTextureSampler3;
//   float4 gDeferredLightColourAndIntensity;
//   float gDeferredLightConeOffset;
//   float gDeferredLightConeScale;
//   float3 gDeferredLightDirection;
//   float gDeferredLightInvSqrRadius;
//   float3 gDeferredLightPosition;
//   float4 gDeferredProjParams;
//   row_major float4x4 gViewInverse;
//   float4 gooDeferredLightScreenSize;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   gViewInverse                     c12      4
//   gDeferredLightPosition           c66      1
//   gDeferredLightDirection          c72      1
//   gDeferredLightInvSqrRadius       c73      1
//   gDeferredLightConeOffset         c74      1
//   gDeferredLightConeScale          c75      1
//   gDeferredLightColourAndIntensity c76      1
//   gooDeferredLightScreenSize       c77      1
//   gDeferredProjParams              c78      1
//   GBufferTextureSampler0           s0       1
//   GBufferTextureSampler1           s1       1
//   GBufferTextureSampler2           s2       1
//   GBufferTextureSampler3           s4       1
//   GBufferStencilTextureSampler     s5       1
//

    ps_3_0
    def c0, 0.50999999, 512, 0.25, 256
    def c1, 0.99609375, 7.96875, 63.75, -127.999992
    def c2, 255, -128, -0, -7.9000001
    def c3, -8, -0, -1, 0.100000001
    def c4, 9.99999975e-006, 1.11111116, 0, 0
    dcl_texcoord v0
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    add r0.xy, c0.x, vPos
    mul r0.xy, r0, c77.zwzw
    texld r1, r0, s1
    mul r2.xyz, r1.w, c1
    frc r2.xyz, r2
    add r3.xyz, r2, r2
    mad r3.xy, r2.yzzw, -c0.z, r3
    mad r1.xyz, r1, c0.w, r3
    add r1.xyz, r1, c1.w
    nrm r2.xyz, r1
    texld r1, r0, s4
    mad r0.z, r1.x, c78.z, -c78.w
    mul r0.z, r0.z, v0.w
    rcp r0.z, r0.z
    mad r1.xyz, v0, -r0.z, c4.x
    mad r3.xyz, v0, -r0.z, c15
    add r3.xyz, -r3, c66
    nrm r4.xyz, r1
    dp3 r0.z, r4, r2
    add r0.z, r0.z, r0.z
    mad r1.xyz, r2, -r0.z, r4
    add r4.xyz, r3, c4.x
    dp3 r0.z, r3, r3
    mov r3.z, c3.z
    mad_sat r0.z, r0.z, -c73.x, -r3.z
    mul r0.z, r0.z, r0.z
    mad r0.z, r0.z, r0.z, -c3.w
    nrm r3.xyz, r4
    dp3_sat r0.w, r3, r1
    texld r1, r0, s2
    mul r1.y, r1.y, r1.y
    add r1.x, r1.x, r1.x
    mul r1.y, r1.y, c0.y
    pow r2.w, r0.w, r1.y
    mul r0.w, r0.z, c4.y
    dp3 r1.y, r3, -c72
    dp3_sat r1.z, r3, r2
    add r1.y, r1.y, -c74.x
    mul_sat r1.y, r1.y, c75.x
    mul r0.w, r0.w, r1.y
    mul r2.xyz, c76.w, c76
    mul r2.xyz, r0.w, r2
    cmp r2.xyz, r0.z, r2, -c2.z
    mul r3.xyz, r2.w, r2
    mul r1.yzw, r1.z, r2.xxyz
    texld r2, r0, s0
    texld r0, r0, s5
    mul r0.yzw, r1, r2.xxyz
    mad r1.xyz, r1.x, r3, r0.yzww
    mad r0.y, r0.x, c2.x, c2.y
    cmp r0.y, r0.y, c2.y, c2.z
    mad r0.x, r0.x, c2.x, r0.y
    add r0.y, r0.x, c2.w
    cmp r0.y, r0.y, c3.x, c3.y
    add r0.x, r0.x, r0.y
    add r0.x, r0.x, c3.z
    add r0.x, -r0_abs.x, c3.w
    cmp r0.x, r0.x, -c3.z, -c3.y
    mov r1.w, -c3.z
    mul oC0, r1, r0.x
	// -------- Encode depth as log --------
	rcp r20.z, c128.x
	mul r20.x, v9.w, r20.z
	mul r20.y, c128.y, r20.z
	log r20.x, r20.x
	log r20.y, r20.y
	rcp r20.y, r20.y
	mul oDepth, r20.x, r20.y
	// -------------------------------------

// approximately 68 instruction slots used (5 texture, 63 arithmetic)
