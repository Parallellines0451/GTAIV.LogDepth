//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4x3 gBoneMtx[48];
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorld         c0       4
//   gWorldViewProj c8       4
//   gViewInverse   c12      4
//   gBoneMtx       c64    144
//

    vs_3_0
    def c0, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendindices v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_color v4
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_color o4
    dcl_texcoord6 o5
    mad r0, v0.xyzx, c0.yyyz, c0.zzzy
    mul r1.x, c0.x, v1.x
    mova a0.x, r1.x
    dp4 r1.x, r0, c64[a0.x]
    dp4 r1.y, r0, c65[a0.x]
    dp4 r1.z, r0, c66[a0.x]
    add r0.xyz, r1, c3
    add o3.xyz, -r0, c15
    dp3 o2.x, v3, c64[a0.x]
    dp3 o2.y, v3, c65[a0.x]
    dp3 o2.z, v3, c66[a0.x]
    mul r0, r1.y, c9
    mov o5.xyz, r1
    mad r0, r1.x, c8, r0
    mad r0, r1.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o10.w, r0
    mov o2.w, r0.w
    mov o1.xy, v2
    mad o4, v4.xyzx, c0.yyyz, c0.zzzy
    mov o5.w, c0.y

// approximately 21 instruction slots used
