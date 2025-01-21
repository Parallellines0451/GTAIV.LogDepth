//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DepthMapTexSampler;
//   sampler2D DiffuseTexSampler;
//   float HybridAdd;
//   float4 gInvScreenSize;
//   float gSoftness;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   gSoftness          c66      1
//   HybridAdd          c72      1
//   gInvScreenSize     c129     1
//   DiffuseTexSampler  s0       1
//   DepthMapTexSampler s12      1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 7.5389857381e-43 // 538
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 0.5, 0.212500006, 0.715399981, 0.0720999986
    def c1, -1, 1, 0, 0
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord1 v2.zw
    dcl_texcoord2 v3.y
    dcl_texcoord3 v4
    dcl_texcoord4 v5.xy
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s12
    mad r0.xy, vPos, c129, c129.zwzw
    texld r0, r0, s12
    
    // LogDepth Read
    rcp r20.x, c128.x
    mul r20.x, r20.x, c128.y
    pow r20.x, r20.x, r0.x
    mul r0.x, r20.x, c128.x
    
    add r0.x, r0.x, -v3.y
    mul r0.x, r0.x, r0.x
    mul_sat r0.x, r0.x, c66.x
    mul r0.w, r0.x, v0.w
    texld r1, v1, s0
    texld r2, v1.zwzw, s0
    lrp r3, c0.x, r2, r1
    mov r0.xyz, v0
    mul r0, r0, r3
    mul r1.xyz, r0, v5.y
    dp3 r1.x, r1, c0.yzww
    mad r1.yzw, r0.xxyz, v5.y, -r1.x
    mov_sat r0.w, r0.w
    mad r1.yzw, v2.z, r1, r1.x
    add r2.x, c1.x, v2.w
    pow r3.x, r1_abs.x, r2.x
    mul r2.xyz, r1.yzww, r3.x
    mad r1.xyz, r1.yzww, -r3.x, v4
    mad r0.xyz, v4.w, r1, r2
    mul r1.xyz, r0.w, r0
    add r2.x, c1.y, -v5.x
    mul r1.w, r0.w, r2.x
    abs r2.x, c72.x
    cmp r0, -r2.x, r0, r1
    max oC0, r0, c1.z
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

// approximately 29 instruction slots used (3 texture, 26 arithmetic)
