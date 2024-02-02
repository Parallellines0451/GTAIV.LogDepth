//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 dShadowMatrix;
//   float4 dShadowOffsetScale;
//   float4 dShadowParam0123;
//   float4 dShadowParam891113;
//   float4 gDeferredLightColourAndIntensity;
//   float gDeferredLightConeAngle;
//   float gDeferredLightConeAngleI;
//   float3 gDeferredLightDirection;
//   float3 gDeferredLightPosition;
//   float gDeferredLightRadius;
//   sampler2D gDeferredLightSampler2;
//   float3 gDeferredLightTangent;
//   float gDeferredLightType;
//   float4 gDeferredLightVolumeParams;
//   float gDeferredVolumeRadiusScale;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   gWorldViewProj                   c8       4
//   gViewInverse                     c12      4
//   dShadowMatrix                    c208     4
//   dShadowParam0123                 c212     1
//   dShadowParam891113               c213     1
//   dShadowOffsetScale               c214     1
//   gDeferredLightType               c215     1
//   gDeferredLightPosition           c216     1
//   gDeferredLightDirection          c217     1
//   gDeferredLightTangent            c218     1
//   gDeferredLightRadius             c219     1
//   gDeferredVolumeRadiusScale       c220     1
//   gDeferredLightConeAngleI         c221     1
//   gDeferredLightConeAngle          c222     1
//   gDeferredLightColourAndIntensity c223     1
//   gDeferredLightVolumeParams       c224     1
//   gDeferredLightSampler2           s0       1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 2.8180112118e-42 // 2011
    def c0, -4, 0.159154937, 0.5, 1
    def c1, 6.28318548, -3.14159274, -1.57079637, 1.57079637
    def c2, 9.99999975e-005, -2, 9.99999975e-006, 0.662
    def c3, 0, -1, 1, 0.000244140625
    def c4, 0.5, -0.5, 0.25, 0
    dcl_position v0
    dcl_2d s0
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1
    dcl_texcoord1 o2.xyz
    dcl_texcoord2 o3.xyz
    mov r0.xyz, c217
    mul r1.xyz, r0.yzxw, c218.zxyw
    mad r0.xyz, c218.yzxw, r0.zxyw, -r1
    mov r1.xyz, c0
    add r0.w, r1.x, c215.x
    if_ge -r0_abs.w, r0_abs.w
      mad r0.w, c222.x, r1.y, r1.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r2.x, r0.w
      mad r0.w, c221.x, r1.y, r1.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r1.x, r0.w
      mad r0.w, v0.z, -c1.z, c1.w
      mad r0.w, r0.w, c0.y, c0.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r3.x, r0.w
      mad r0.w, r3.x, -r3.x, c0.w
      mul r1.yz, v0.xxyw, v0.xxyw
      add r1.y, r1.z, r1.y
      add r1.y, r1.y, c2.x
      rcp r1.y, r1.y
      mul r0.w, r0.w, r1.y
      rsq r0.w, r0.w
      rcp r0.w, r0.w
      sge r1.y, r2.x, r3.x
      mul r1.z, r0.w, c220.x
      mul r1.zw, r1.z, v0.xyxy
      mul r2.yzw, r0.xxyz, r1.w
      mad r2.yzw, c218.xxyz, r1.z, r2
      mad r3.yzw, c217.xxyz, r2.x, r2
      sge r1.z, r3.x, r1.x
      mad r2.xyz, c217, r1.x, r2.yzww
      mul r1.xw, r0.w, v0.xyzy
      mul r4.xyz, r0, r1.w
      mad r4.xyz, c218, r1.x, r4
      mad r4.xyz, c217, r3.x, r4
      lrp r5.xyz, r1.z, r2, r4
      lrp r2.xyz, r1.y, r3.yzww, r5
    else
      mov r1.y, c2.y
      add r0.w, r1.y, c215.x
      sge r0.w, -r0_abs.w, r0_abs.w
      mul r1.xy, v0, v0
      add r1.x, r1.y, r1.x
      sge r1.y, r1.x, c2.x
      mov_sat r1.z, -v0.z
      add r1.z, -r1.z, c0.w
      mul r1.z, r1.z, c222.x
      mad r1.z, r1.z, c0.y, c0.z
      frc r1.z, r1.z
      mad r1.z, r1.z, c1.x, c1.y
      sincos r3.x, r1.z
      mad r1.z, r3.x, -r3.x, c0.w
      add r1.x, r1.x, c2.x
      rcp r1.x, r1.x
      mul r1.x, r1.z, r1.x
      rsq r1.x, r1.x
      rcp r1.x, r1.x
      mul r1.x, r1.x, c220.x
      mul r1.xz, r1.x, v0.xyyw
      mul r0.xyz, r0, r1.z
      mad r0.xyz, c218, r1.x, r0
      mad r0.xyz, c217, r3.x, r0
      sge r1.x, v0_abs.z, c2.x
      mul r3.xyz, r1.x, c217
      mad r0.xyz, c217, -r1.x, r0
      mad r0.xyz, r1.y, r0, r3
      add r1.xyz, c2.z, v0
      dp3 r1.w, r1, r1
      rsq r1.w, r1.w
      mul r3.xyz, r1, r1.w
      mad r0.xyz, r1, -r1.w, r0
      mad r2.xyz, r0.w, r0, r3
    endif
    mov r0.x, c220.x
    mul r0.x, r0.x, c219.x
    mul r0.x, r0.x, c2.w
    mul r0.yzw, r2.xxyz, r0.x
    mad r1.xyz, r2, r0.x, c216
    mul r2.xyz, r1.y, c209
    mad r1.xyw, r1.x, c208.xyzz, r2.xyzz
    mad r1.xyz, r1.z, c210, r1.xyww
    add r1.xyz, r1, c211
    add r0.x, r1.z, c213.z
    slt r1.z, c3.x, r0.x
    mad r2.xy, r1.z, c3.yzzw, c3.zxzw
    mov r1.w, -r0_abs.x
    dp3 r1.z, r1.xyww, r1.xyww
    rsq r1.z, r1.z
    rcp r1.z, r1.z
    add r0.x, r0_abs.x, r1.z
    rcp r0.x, r0.x
    mul r1.xy, r1, r0.x
    mad_sat r1.xy, r1, c4, c4.x
    mad r1.xy, r1, c214.w, c214
    add r1.xy, r1, c3.w
    mov r1.zw, c3.x
    texldl r1, r1, s0
    mul r1.xy, r2, r1
    add r0.x, r1.y, r1.x
    rcp r1.x, -c212.w
    mul r0.x, r0.x, r1.x
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul r0.x, r0_abs.x, r1.x
    min r0.x, r0.x, c0.w
    mad r0.xyz, r0.yzww, r0.x, c216
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r1, r0.z, c10, r1
    add r1, r1, c11
    add o2.xyz, r0, -c15
    mov r0.xyz, c216
    add o1.xyz, -r0, c15
    mov r0.w, c223.w
    mul r0.x, r0.w, c224.x
    mul r0.x, r0.x, c4.z
    mul o3.xyz, r0.x, c223
    mov o0, r1
    mov o10.zw, r1
    mov o1.w, r1.w
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 154 instruction slots used (2 texture, 152 arithmetic)
