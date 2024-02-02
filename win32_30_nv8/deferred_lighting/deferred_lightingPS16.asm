//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
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
//   sampler2D gDeferredLightSampler;
//   float3 gDeferredLightTangent;
//   float gDeferredLightType;
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
//   gDeferredLightType               c66      1
//   gDeferredLightPosition           c72      1
//   gDeferredLightDirection          c73      1
//   gDeferredLightTangent            c74      1
//   gDeferredLightInvSqrRadius       c75      1
//   gDeferredLightConeOffset         c76      1
//   gDeferredLightConeScale          c77      1
//   gDeferredLightColourAndIntensity c78      1
//   gooDeferredLightScreenSize       c79      1
//   gDeferredProjParams              c80      1
//   gDeferredLightSampler            s0       1
//   GBufferTextureSampler0           s1       1
//   GBufferTextureSampler1           s2       1
//   GBufferTextureSampler2           s4       1
//   GBufferTextureSampler3           s5       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 2.9427267751e-44 // 21
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 0.50999999, 512, 2, -0.999989986
    def c1, 1, 0.5, 0, 9.99999975e-006
    def c2, -0.100000001, 1.11111116, 0, 0
    dcl_texcoord v0
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    mul r0.xyz, c78.w, c78
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c79.zwzw
    texld r2, r1, s5
	// ----------------------------------------------------------------- Log2Linear -----------------------------------------------------------------
	if_ne r2.x, c127.y
		rcp r20.x, c128.x
		mul r20.x, r20.x, c128.y
		pow r20.x, r20.x, r2.x
		mul r20.x, r20.x, c128.x	// W_clip
		
		add r20.y, r20.x, -c128.x
		add r20.z, c128.y, -c128.x
		mul r20.y, r20.y, c128.y
		mul r20.z, r20.z, r20.x
		rcp r20.z, r20.z
		mul r20.w, r20.y, r20.z		// Linear depth
		
		min r2, r20.w, c127.x		// FP error hack
	endif
	// ----------------------------------------------------------------------------------------------------------------------------------------------
    texld r3, r1, s1
    mad r0.w, r2.x, c80.z, -c80.w
    mul r0.w, r0.w, v0.w
    rcp r0.w, r0.w
    mad r2.xyz, v0, -r0.w, c15
    texld r4, r1, s4
    add r1.z, r4.x, r4.x
    mul r1.w, r4.y, r4.y
    mul r1.w, r1.w, c0.y
    texld r5, r1, s2
    mad r4.xyw, r5.xyzz, c0.z, c0.w
    nrm r5.xyz, r4.xyww
    add r4.xyw, r2.xyzz, -c72.xyzz
    mov r6.xyz, c73
    mul r7.xyz, -r6.zxyw, c74.yzxw
    mad r6.xyz, -r6.yzxw, c74.zxyw, -r7
    dp3 r1.x, r6, r4.xyww
    dp3 r1.y, c74, r4.xyww
    dp3 r2.w, -c73, r4.xyww
    mov r6.z, c0.z
    if_ge c66.x, r6.z
      mov r6.x, c1.x
      mad r3.w, c76.x, -c76.x, r6.x
      rsq r3.w, r3.w
      mul r3.w, r3.w, c76.x
      rcp r5.w, r2.w
      mul r3.w, r3.w, r5.w
      mul r6.xy, r1, r3.w
      mad r6.xy, r6, c1.y, c1.y
      mov r6.zw, c1.z
      texldl r6, r6, s0
    else
      dp3 r3.w, r4.xyww, r4.xyww
      rsq r3.w, r3.w
      rcp r4.x, r3.w
      mad r2.w, r2.w, -r3.w, c1.x
      mul r2.w, r4.x, r2.w
      rcp r2.w, r2.w
      mul r1.xy, r1, r2.w
      mad r7.xy, r1, c1.y, c1.y
      mov r7.zw, c1.z
      texldl r6, r7, s0
    endif
    mad r4.xyw, v0.xyzz, -r0.w, c1.w
    nrm r7.xyz, r4.xyww
    add r2.xyz, -r2, c72
    dp3 r0.w, r2, r2
    add r2.xyz, r2, c1.w
    nrm r8.xyz, r2
    mov r1.x, c1.x
    mad_sat r0.w, r0.w, -c75.x, r1.x
    mul r0.w, r0.w, r0.w
    mad r0.w, r0.w, r0.w, c2.x
    mul r1.x, r0.w, c2.y
    dp3 r1.y, r8, -c73
    add r1.y, r1.y, -c76.x
    mul_sat r1.y, r1.y, c77.x
    mul r1.x, r1.x, r1.y
    dp3 r1.y, r7, r5
    add r1.y, r1.y, r1.y
    mad r2.xyz, r5, -r1.y, r7
    dp3_sat r1.y, r8, r2
    dp3_sat r2.x, r8, r5
    mul r0.xyz, r0, r1.x
    cmp r0.xyz, r0.w, r0, c1.z
    pow r0.w, r1.y, r1.w
    mul r1.xyw, r0.xyzz, r0.w
    mul r0.xyz, r2.x, r0
    mul r2.xyz, r3, r6
    mul r1.xyz, r1.z, r1.xyww
    mad r0.xyz, r2, r0, r1
    mad_sat r1.x, r4.z, r4.z, c1.y
    mov r0.w, c1.x
    mul oC0, r0, r1.x
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

// approximately 90 instruction slots used (8 texture, 82 arithmetic)
