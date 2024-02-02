//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DiffuseTexSampler;
//   float HybridAdd;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   HybridAdd         c66      1
//   DiffuseTexSampler s0       1
//

    ps_3_0
    def c219, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 7.7351675231e-43 // 552
    def c0, 0.5, 0.212500006, 0.715399981, 0.0720999986
    def c1, -1, 1, 0, 0
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord1 v2.zw
    dcl_texcoord3 v3
    dcl_texcoord4 v4.xy
    dcl_2d s0
    texld r0, v1, s0
    texld r1, v1.zwzw, s0
    lrp r2, c0.x, r1, r0
    mul r0, r2, v0
    mul r1.xyz, r0, v4.y
    dp3 r1.x, r1, c0.yzww
    mad r1.yzw, r0.xxyz, v4.y, -r1.x
    mov_sat r0.w, r0.w
    mad r1.yzw, v2.z, r1, r1.x
    add r2.x, c1.x, v2.w
    pow r3.x, r1_abs.x, r2.x
    mul r2.xyz, r1.yzww, r3.x
    mad r1.xyz, r1.yzww, -r3.x, v3
    mad r0.xyz, v3.w, r1, r2
    mul r1.xyz, r0.w, r0
    abs r2.x, c66.x
    add r2.y, c1.y, -v4.x
    mul r1.w, r0.w, r2.y
    cmp r0, -r2.x, r0, r1
    max oC0, r0, c1.z

// approximately 22 instruction slots used (2 texture, 20 arithmetic)
