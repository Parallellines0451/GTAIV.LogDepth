//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float BoundRadius;
//   sampler2D DamageSampler;
//   float4x3 gBoneMtx[48];
//   row_major float4x4 gWorldViewProj;
//   bool switchOn;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   switchOn       b8       1
//   gWorldViewProj c8       4
//   gBoneMtx       c64    144
//   BoundRadius    c208     1
//   DamageSampler  s0       1
//

    vs_3_0
    def c0, 9.99999975e-006, 1, 0.5, 126.732674
    def c1, 0, 0.00789062493, 1.52587891e-005, 65536
    def c2, 0.00390625, 256, -128, 0.0078125
    def c3, 765.005859, 0, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_color v4
    dcl_2d s0
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_color o2
    if b8
      dp3 r0.x, v0, v0
      rsq r0.x, r0.x
      rcp r0.x, r0.x
      add r0.y, r0.x, c0.x
      rcp r0.y, r0.y
      mad r0.z, v0.z, -r0.y, c0.y
      mul r0.z, r0.z, c0.z
      mad r0.yw, v0.xxzy, r0.y, c0.x
      mul r1.xy, r0.ywzw, r0.ywzw
      add r1.x, r1.y, r1.x
      rsq r1.x, r1.x
      mul r0.yw, r0, r1.x
      mul r0.yz, r0.z, r0.xyww
      mad r1.xy, r0.yzzw, c0.z, c0.z
      mul r0.yz, r1.xxyw, c0.w
      frc r2.xy, r0_abs.yzzw
      sge r0.yz, r0, -r0
      lrp r3.xy, r0.yzzw, r2, -r2
      mov r1.zw, c1.x
      texldl r2, r1, s0
      mad r0.yz, r3.xxyw, -c1.y, r1.xxyw
      add r1.xy, r0.yzzw, c1.yxzw
      mov r1.zw, c1.x
      texldl r1, r1, s0
      add r4.xy, r0.yzzw, c1
      mov r4.zw, c1.x
      texldl r4, r4, s0
      add r5.xy, r0.yzzw, c1.y
      mov r5.zw, c1.x
      texldl r5, r5, s0
      mul r0.y, r2.x, c1.z
      frc r0.z, r0.y
      add r0.w, r0.y, -r0.z
      slt r0.y, r0.y, -r0.y
      slt r0.z, -r0.z, r0.z
      mad r6.z, r0.y, r0.z, r0.w
      mad r0.y, r6.z, -c1.w, r2.x
      mul r0.z, r0.y, c2.x
      frc r0.w, r0.z
      add r1.y, r0.z, -r0.w
      slt r0.z, r0.z, -r0.z
      slt r0.w, -r0.w, r0.w
      mad r6.y, r0.z, r0.w, r1.y
      mad r6.x, r6.y, -c2.y, r0.y
      mul r0.y, r1.x, c1.z
      frc r0.z, r0.y
      add r0.w, r0.y, -r0.z
      slt r0.y, r0.y, -r0.y
      slt r0.z, -r0.z, r0.z
      mad r2.z, r0.y, r0.z, r0.w
      mad r0.y, r2.z, -c1.w, r1.x
      mul r0.z, r0.y, c2.x
      frc r0.w, r0.z
      add r1.x, r0.z, -r0.w
      slt r0.z, r0.z, -r0.z
      slt r0.w, -r0.w, r0.w
      mad r2.y, r0.z, r0.w, r1.x
      mad r2.x, r2.y, -c2.y, r0.y
      mul r0.y, r4.x, c1.z
      frc r0.z, r0.y
      add r0.w, r0.y, -r0.z
      slt r0.y, r0.y, -r0.y
      slt r0.z, -r0.z, r0.z
      mad r1.z, r0.y, r0.z, r0.w
      mad r0.y, r1.z, -c1.w, r4.x
      mul r0.z, r0.y, c2.x
      frc r0.w, r0.z
      add r1.w, r0.z, -r0.w
      slt r0.z, r0.z, -r0.z
      slt r0.w, -r0.w, r0.w
      mad r1.y, r0.z, r0.w, r1.w
      mad r1.x, r1.y, -c2.y, r0.y
      mul r0.y, r5.x, c1.z
      frc r0.z, r0.y
      add r0.w, r0.y, -r0.z
      slt r0.y, r0.y, -r0.y
      slt r0.z, -r0.z, r0.z
      mad r4.z, r0.y, r0.z, r0.w
      mad r0.y, r4.z, -c1.w, r5.x
      mul r0.z, r0.y, c2.x
      frc r0.w, r0.z
      add r1.w, r0.z, -r0.w
      slt r0.z, r0.z, -r0.z
      slt r0.w, -r0.w, r0.w
      mad r4.y, r0.z, r0.w, r1.w
      mad r4.x, r4.y, -c2.y, r0.y
      add r0.yz, -r3.xxyw, c0.y
      mul r5.xyz, r6, r0.y
      mul r2.xyz, r3.x, r2
      mul r2.xyz, r0.z, r2
      mad r2.xyz, r5, r0.z, r2
      mul r0.yzw, r1.xxyz, r0.y
      mad r0.yzw, r0, r3.y, r2.xxyz
      mul r1.xyz, r3.x, r4
      mad r0.yzw, r1.xxyz, r3.y, r0
      add r0.yzw, r0, c2.z
      mul r0.yzw, r0, c2.w
      rcp r1.x, c208.x
      mul r0.x, r0.x, r1.x
      min r0.x, r0.x, c0.y
      mul r0.xyz, r0.yzww, r0.x
      mad r0.xyz, r0, c0.z, v0
    else
      mov r0.xyz, v0
    endif
    mul r1, c3.x, v2
    mova a0, r1
    mul r1, v1.y, c64[a0.y]
    mul r2, v1.y, c65[a0.y]
    mul r3, v1.y, c66[a0.y]
    mad r1, c64[a0.x], v1.x, r1
    mad r2, c65[a0.x], v1.x, r2
    mad r3, c66[a0.x], v1.x, r3
    mad r1, c64[a0.z], v1.z, r1
    mad r2, c65[a0.z], v1.z, r2
    mad r3, c66[a0.z], v1.z, r3
    mad r1, c64[a0.w], v1.w, r1
    mad r2, c65[a0.w], v1.w, r2
    mad r3, c66[a0.w], v1.w, r3
    mov r0.w, c0.y
    dp4 r1.x, r0, r1
    dp4 r1.y, r0, r2
    dp4 r0.x, r0, r3
    mul r2, r1.y, c9
    mad r1, r1.x, c8, r2
    mad r0, r0.x, c10, r1
    add o0, r0, c11
    add o10.w, r0, c11
    mov o1.xy, v3
    mov o2, v4

// approximately 136 instruction slots used (8 texture, 128 arithmetic)
