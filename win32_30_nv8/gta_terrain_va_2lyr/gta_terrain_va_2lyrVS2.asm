//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 gDayNightEffects;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//   float3 materialDiffuse;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorld           c0       4
//   gWorldViewProj   c8       4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//   materialDiffuse  c208     1
//

    vs_3_0
    def c4, 9.99999975e-006, -1, 1, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_normal v5
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord3 o2.xy
    dcl_color o3
    dcl_color1 o4
    dcl_texcoord1 o5.xyz
    dcl_texcoord2 o6.xyz
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add o0, r0, c11
    add o10.w, r0, c11
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add o5.xyz, r0, c3
    mul r0.xyz, c1, v5.y
    mad r0.xyz, v5.x, c0, r0
    mad r0.xyz, v5.z, c2, r0
    add r0.xyz, r0, c4.x
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o6.xyz, r0, r0.w
    mul r0.xy, c45, v1
    add r0.x, r0.y, r0.x
    mov r0.yz, c4
    mad r0.x, r0.x, c39.z, r0.y
    mad o3.w, c40.z, r0.x, r0.z
    mov o1.xy, v2
    mov o2.xy, v3
    mov o3.xyz, c208
    mul o4, c4.zzww, v4.xyxx

// approximately 24 instruction slots used
