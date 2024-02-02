//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 AzimuthColor;
//   float3 AzimuthColorEast;
//   float AzimuthHeight;
//   float AzimuthStrength;
//   float CloudFadeOut;
//   float2 GalaxyOffset;
//   float4 MoonTexPosition;
//   float3 SkyColor;
//   float StarFieldUVRepeat;
//   float4 TopCloudBiasDetailThresholdHeight;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name                              Reg   Size
//   --------------------------------- ----- ----
//   gWorld                            c0       4
//   gWorldViewProj                    c8       4
//   SkyColor                          c64      1
//   AzimuthColor                      c65      1
//   AzimuthColorEast                  c66      1
//   AzimuthHeight                     c67      1
//   CloudFadeOut                      c68      1
//   TopCloudBiasDetailThresholdHeight c69      1
//   AzimuthStrength                   c70      1
//   StarFieldUVRepeat                 c71      1
//   GalaxyOffset                      c72      1
//   MoonTexPosition                   c73      1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.9152279093e-42 // 2794
    def c4, 4, 0.5, 1, -0.212114394
    def c5, -2, 3.14159274, 0.317732662, 0.5
    def c6, -0.0187292993, 0.0742610022, 1.57072878, 1.57079637
    def c7, 1, 1.5, 0, 0.5
    dcl_position v0
    dcl_texcoord v1
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5.xyz
    mul r0, c1.yxyz, v0.y
    mad r0, v0.x, c0.yxyz, r0
    mad r0, v0.z, c2.yxyz, r0
    mad r0, v0.w, c3.yxyz, r0
    add r0, r0, -c3.yxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul r1, r0, r1.x
    mov r2.xy, c4
    mad_sat o3.w, r1.x, r2.x, -c68.x
    mad r2.xzw, r1.yyzw, c7.xyyx, c7.zywz
    dp3 r0.x, r2.xzww, r2.xzww
    rsq r0.x, r0.x
    mul r1.xw, r0.x, r1.yyzw
    mad r2.xz, r1_abs.xyww, c6.x, c6.y
    mad r2.xz, r2, r1_abs.xyww, c4.w
    mad r2.xz, r2, r1_abs.xyww, c6.z
    add r3.xy, -r1_abs.xwzw, c4.z
    slt r1.xw, r1, -r1
    rsq r0.x, r3.x
    rsq r2.w, r3.y
    rcp r2.w, r2.w
    mul r2.z, r2.w, r2.z
    rcp r0.x, r0.x
    mul r0.x, r0.x, r2.x
    mad r2.x, r0.x, c5.x, c5.y
    mad r0.x, r2.x, r1.x, r0.x
    add r0.x, -r0.x, c6.w
    mad r3.x, r0.x, c5.z, c5.w
    mad r0.x, r2.z, c5.x, c5.y
    mad r0.x, r0.x, r1.w, r2.z
    add r0.x, -r0.x, c6.w
    mad r3.y, r0.x, c5.z, c5.w
    add r1.xw, r3.xyzy, c72.xyzy
    add r2.xz, r3.xyyw, -c73.zyww
    mul o2.xy, r2.xzzw, c73.x
    mul o4.xy, r1.xwzw, c71.x
    mov o4.zw, r1.xyxw
    add r1.xw, -c4.y, v1.xyzy
    mul r2.xz, r1.xyww, c69.w
    mad o3.xy, r1.xwzw, c69.w, r2.y
    mul r1.xw, r2.xyzz, r2.xyzz
    add r0.x, r1.w, r1.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    add o3.z, -r0.x, c4.z
    mul r2, c9, v0.y
    mad r2, v0.x, c8, r2
    mad r2, v0.z, c10, r2
    mad r2, v0.w, c11, r2
    rcp r0.x, r2.w
    mad o1.z, r2.z, -r0.x, c4.z
    mov o0, r2
    mov o10.zw, r2
    mul_sat r0.x, r1.z, c67.x
    mad r1.x, r1.y, c4.y, c4.y
    add r0.x, -r0.x, c4.z
    mul r0.x, r0.x, c70.x
    mov r2.xyz, c66
    add r1.yzw, -r2.xxyz, c65.xxyz
    mad r1.xyz, r1.x, r1.yzww, c66
    mad o5.xyz, r1, r0.x, c64
    mov o1.xy, v1
    mov o1.w, r0.w
    mov o2.zw, r0.xyyz
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 64 instruction slots used
