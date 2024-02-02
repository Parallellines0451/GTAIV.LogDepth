//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float3 globalAnimUV0;
//   float3 globalAnimUV1;
//   float4 globalScreenSize;
//   float zShift;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorld           c0       4
//   gWorldViewProj   c8       4
//   globalScreenSize c44      1
//   globalAnimUV0    c208     1
//   globalAnimUV1    c209     1
//   zShift           c210     1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.0240020860e-42 // 2158
    def c4, 9.99999975e-006, 1, 0, 0.5
    dcl_position v0
    dcl_texcoord v1
    dcl_normal v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_texcoord3 v5
    dcl_texcoord4 v6
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_color o3
    dcl_texcoord6 o4
    mov r0.xyz, v0
    mul r1.xyz, r0.y, v4
    mad r0.xyw, r0.x, v3.xyzz, r1.xyzz
    mad r0.xyz, r0.z, v5, r0.xyww
    add r0.xyz, r0, v6
    mul r1.xyz, r0.y, c1
    mad r1.xyz, r0.x, c0, r1
    mad r1.xyz, r0.z, c2, r1
    add o4.xyz, r1, c3
    mul r1.xyz, c1, v2.y
    mad r1.xyz, v2.x, c0, r1
    mad r1.xyz, v2.z, c2, r1
    add r1.xyz, r1, c4.x
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    mul o2.xyz, r1, r0.w
    mad r1.xyz, v1.xyxw, c4.yyzw, c4.zzyw
    dp3 o1.x, c208, r1
    dp3 o1.y, c209, r1
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r0, r0.z, c10, r1
    add r0, r0, c11
    mul r1.x, r0.w, c4.w
    mad o0.xy, c44.zwzw, r1.x, r0
    mov o10.x, c210.x
    add o0.z, r0.z, -c210.x
    add o10.z, r0.z, -c210.x
    mov o0.w, r0.w
    mov o10.w, r0.w
    mov o2.w, r0.w
    mov o3.x, v3.w
    mov o3.y, v4.w
    mov o3.z, v5.w
    mov o3.w, v6.w
    mov o4.w, c4.y
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 33 instruction slots used
