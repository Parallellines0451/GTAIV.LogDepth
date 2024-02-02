//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float BoundRadius;
//   sampler2D DamageSampler;
//   float4 gDayNightEffects;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//   bool switchOn;
//   float zShiftScale;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   switchOn         b8       1
//   gWorld           c0       4
//   gWorldViewProj   c8       4
//   gViewInverse     c12      4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//   BoundRadius      c208     1
//   zShiftScale      c209     1
//   DamageSampler    s0       1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.5116539516e-42 // 2506
    def c4, 9.99999975e-006, 1, 0.5, 126.732674
    def c5, 0, 0.00789062493, 1.52587891e-005, 65536
    def c6, 0.00390625, 256, -128, 0.0078125
    def c7, 9.99999994e-009, 0, 0, 0
    def c12, -0.5, -0.492109388, 2, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_normal v2
    dcl_tangent v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_texcoord4 v7
    dcl_2d s0
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_texcoord4 o4.xyz
    dcl_texcoord5 o5.xyz
    dcl_color o6
    dcl_texcoord6 o7
    dcl_texcoord7 o8
    mov r0.xyz, v0
    mul r1.xyz, r0.y, v5
    mad r0.xyw, r0.x, v4.xyzz, r1.xyzz
    mad r0.xyz, r0.z, v6, r0.xyww
    add r0.xyz, r0, v7
    if b8
      dp3 r0.w, r0, r0
      rsq r0.w, r0.w
      rcp r0.w, r0.w
      add r1.x, r0.w, c4.x
      rcp r1.x, r1.x
      mad r1.y, r0.z, -r1.x, c4.y
      mul r1.y, r1.y, c4.z
      mad r1.xz, r0.xyyw, r1.x, c4.x
      mul r2.xy, r1.xzzw, r1.xzzw
      add r1.w, r2.y, r2.x
      rsq r1.w, r1.w
      mul r1.xz, r1, r1.w
      mul r1.xy, r1.y, r1.xzzw
      mad r1.xy, r1, c4.z, c4.z
      mul r2.xy, r1, c4.w
      frc r2.zw, r2_abs.xyxy
      sge r2.xy, r2, -r2
      lrp r3.xy, r2, r2.zwzw, -r2.zwzw
      mov r1.zw, c5.x
      texldl r2, r1, s0
      mad r1.xy, r3, -c5.y, r1
      add r4.xy, r1, c5.yxzw
      mov r4.zw, c5.x
      texldl r4, r4, s0
      add r5.xy, r1, c5
      mov r5.zw, c5.x
      texldl r5, r5, s0
      add r6.xy, r1, c5.y
      mov r6.zw, c5.x
      texldl r6, r6, s0
      mul r1.z, r2.x, c5.z
      frc r1.w, r1.z
      add r2.y, r1.z, -r1.w
      slt r1.z, r1.z, -r1.z
      slt r1.w, -r1.w, r1.w
      mad r7.z, r1.z, r1.w, r2.y
      mad r1.z, r7.z, -c5.w, r2.x
      mul r1.w, r1.z, c6.x
      frc r2.x, r1.w
      add r2.y, r1.w, -r2.x
      slt r1.w, r1.w, -r1.w
      slt r2.x, -r2.x, r2.x
      mad r7.y, r1.w, r2.x, r2.y
      mad r7.x, r7.y, -c6.y, r1.z
      mul r1.z, r4.x, c5.z
      frc r1.w, r1.z
      add r2.x, r1.z, -r1.w
      slt r1.z, r1.z, -r1.z
      slt r1.w, -r1.w, r1.w
      mad r2.z, r1.z, r1.w, r2.x
      mad r1.z, r2.z, -c5.w, r4.x
      mul r1.w, r1.z, c6.x
      frc r2.w, r1.w
      add r3.z, r1.w, -r2.w
      slt r1.w, r1.w, -r1.w
      slt r2.w, -r2.w, r2.w
      mad r2.y, r1.w, r2.w, r3.z
      mad r2.x, r2.y, -c6.y, r1.z
      mul r1.z, r5.x, c5.z
      frc r1.w, r1.z
      add r2.w, r1.z, -r1.w
      slt r1.z, r1.z, -r1.z
      slt r1.w, -r1.w, r1.w
      mad r4.z, r1.z, r1.w, r2.w
      mad r1.z, r4.z, -c5.w, r5.x
      mul r1.w, r1.z, c6.x
      frc r2.w, r1.w
      add r3.z, r1.w, -r2.w
      slt r1.w, r1.w, -r1.w
      slt r2.w, -r2.w, r2.w
      mad r4.y, r1.w, r2.w, r3.z
      mad r4.x, r4.y, -c6.y, r1.z
      mul r1.z, r6.x, c5.z
      frc r1.w, r1.z
      add r2.w, r1.z, -r1.w
      slt r1.z, r1.z, -r1.z
      slt r1.w, -r1.w, r1.w
      mad r5.z, r1.z, r1.w, r2.w
      mad r1.z, r5.z, -c5.w, r6.x
      mul r1.w, r1.z, c6.x
      frc r2.w, r1.w
      add r3.z, r1.w, -r2.w
      slt r1.w, r1.w, -r1.w
      slt r2.w, -r2.w, r2.w
      mad r5.y, r1.w, r2.w, r3.z
      mad r5.x, r5.y, -c6.y, r1.z
      add r1.zw, -r3.xyxy, c4.y
      mul r6.xyz, r7, r1.z
      mul r8.xyz, r3.x, r2
      mul r8.xyz, r1.w, r8
      mad r6.xyz, r6, r1.w, r8
      mul r8.xyz, r4, r1.z
      mad r6.xyz, r8, r3.y, r6
      mul r3.xzw, r3.x, r5.xyyz
      mad r3.xyz, r3.xzww, r3.y, r6
      add r3.xyz, r3, c6.z
      mul r3.xyz, r3, c6.w
      rcp r1.z, c208.x
      mul r0.w, r0.w, r1.z
      min r0.w, r0.w, c4.y
      mul r3.xyz, r3, r0.w
      mad r0.xyz, r3, c4.z, r0
      add r3.xyz, -c4.y, v2
      sge r3.xyz, -r3_abs, r3_abs
      mul r1.z, r3.y, r3.x
      mul r1.z, r3.z, r1.z
      if_ne r1.z, -r1.z
        mov r3.x, c5.x
        mov r1.z, c5.x
        mov r1.w, v2.z
      else
        add r5, r1.xyxy, c12.xxyx
        add r5, r5, r5
        mul r6, r5, r5
        add r6.xy, r6.ywzw, r6.xzzw
        slt r6.zw, c5.x, r6.xyxy
        rsq r2.w, r6.x
        rcp r2.w, r2.w
        mul r2.w, r6.z, r2.w
        mad r3.w, r2.w, -c12.z, c12.w
        slt r4.w, r3.w, -c4.y
        lrp r8.z, r4.w, -c4.y, r3.w
        slt r3.w, r8.z, c4.y
        slt r4.w, -c4.y, r8.z
        mul r3.w, r3.w, r4.w
        slt r4.w, c5.x, r2.w
        mul r3.w, r3.w, r4.w
        mad r4.w, r8.z, -r8.z, c4.y
        rsq r4.w, r4.w
        rcp r4.w, r4.w
        rcp r2.w, r2.w
        mul r2.w, r4.w, r2.w
        mul r2.w, r3.w, r2.w
        mul r8.xy, r5, r2.w
        add r7.xyz, r7, c6.z
        mul r7.xyz, r0.w, r7
        mul r7.xyz, r7, c6.x
        rsq r2.w, r6.y
        rcp r2.w, r2.w
        mul r2.w, r6.w, r2.w
        mad r3.w, r2.w, -c12.z, c12.w
        slt r4.w, r3.w, -c4.y
        lrp r6.z, r4.w, -c4.y, r3.w
        slt r3.w, r6.z, c4.y
        slt r4.w, -c4.y, r6.z
        mul r3.w, r3.w, r4.w
        slt r4.w, c5.x, r2.w
        mul r3.w, r3.w, r4.w
        mad r4.w, r6.z, -r6.z, c4.y
        rsq r4.w, r4.w
        rcp r4.w, r4.w
        rcp r2.w, r2.w
        mul r2.w, r4.w, r2.w
        mul r2.w, r3.w, r2.w
        mul r6.xy, r5.zwzw, r2.w
        add r5.xyz, r6, c7.x
        add r2.xyz, r2, c6.z
        mul r2.xyz, r0.w, r2
        add r5.xyz, -r8, r5
        mad r2.xyz, r2, c6.x, -r7
        dp3 r2.x, r2, v2
        dp3 r2.y, r5, r5
        slt r2.z, c5.x, r2.y
        rcp r2.y, r2.y
        mul r2.x, -r2.x, r2.y
        mul r2.xyw, r5.xyzz, r2.x
        mad r2.xyz, r2.z, r2.xyww, v2
        add r1.xy, r1, c12
        add r1.xy, r1, r1
        mul r5.xy, r1, r1
        add r2.w, r5.y, r5.x
        slt r3.w, c5.x, r2.w
        rsq r2.w, r2.w
        rcp r2.w, r2.w
        mul r2.w, r3.w, r2.w
        mad r3.w, r2.w, -c12.z, c12.w
        slt r4.w, r3.w, -c4.y
        lrp r5.z, r4.w, -c4.y, r3.w
        slt r3.w, r5.z, c4.y
        slt r4.w, -c4.y, r5.z
        mul r3.w, r3.w, r4.w
        slt r4.w, c5.x, r2.w
        mul r3.w, r3.w, r4.w
        mad r4.w, r5.z, -r5.z, c4.y
        rsq r4.w, r4.w
        rcp r4.w, r4.w
        rcp r2.w, r2.w
        mul r2.w, r4.w, r2.w
        mul r2.w, r3.w, r2.w
        mul r5.xy, r1, r2.w
        add r4.xyz, r4, c6.z
        mul r4.xyz, r0.w, r4
        add r5.xyz, -r8, r5
        mad r4.xyz, r4, c6.x, -r7
        dp3 r0.w, r4, v2
        dp3 r1.x, r5, r5
        slt r1.y, c5.x, r1.x
        rcp r1.x, r1.x
        mul r0.w, -r0.w, r1.x
        mul r4.xyz, r5, r0.w
        mad r2.xyz, r1.y, r4, r2
        nrm r3.xyz, r2
        mov r1.zw, r3.xyyz
      endif
    else
      mov r3.x, v2.x
      mov r1.zw, v2.xyyz
    endif
    mul r2.xyz, r0.y, c1
    mad r2.xyz, r0.x, c0, r2
    mad r2.xyz, r0.z, c2, r2
    add r2.xyz, r2, c3
    add r3.yzw, -r2.xxyz, c15.xxyz
    mul r1.xyz, r1.z, c1
    mad r1.xyz, r3.x, c0, r1
    mad r1.xyz, r1.w, c2, r1
    add r1.xyz, r1, c4.x
    nrm r4.xyz, r1
    mul r1.xyz, c1, v3.y
    mad r1.xyz, v3.x, c0, r1
    mad r1.xyz, v3.z, c2, r1
    add r1.xyz, r1, c4.x
    nrm r5.xyz, r1
    mul r1.xyz, r4.yzxw, r5.zxyw
    mad r1.xyz, r5.yzxw, r4.zxyw, -r1
    mul r1.xyz, r1, v3.w
    dp3 o8.x, r5, r3.yzww
    dp3 o8.y, r1, r3.yzww
    dp3 o8.z, r4, r3.yzww
    mov r6.xyz, c15
    add r6.xyz, r6, -c3
    dp3 r7.x, c0, r6
    dp3 r7.y, c1, r6
    dp3 r7.z, c2, r6
    add r6.xyz, -r0, r7
    nrm r7.xyz, r6
    mad r0.xyz, r7, c209.x, r0
    mul r6, r0.y, c9
    mad r6, r0.x, c8, r6
    mad r0, r0.z, c10, r6
    add r0, r0, c11
    mul r1.w, c45.y, v5.w
    mad r1.w, v4.w, c45.x, r1.w
    mov r6.y, c4.y
    mad r1.w, r1.w, c39.z, -r6.y
    mad o6.xy, c40.z, r1.w, r6.y
    mov o0, r0
    mov o10.zw, r0
    mov o1.xy, v1
    mov o2.w, r0.w
    mov o2.xyz, r4
    mov o3.xyz, r3.yzww
    mov o4.xyz, r5
    mov o5.xyz, r1
    mov o6.z, v6.w
    mov o6.w, v7.w
    mov o7.xyz, r2
    mov o7.w, c4.y
    mov o8.w, c4.y
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 280 instruction slots used (8 texture, 272 arithmetic)
