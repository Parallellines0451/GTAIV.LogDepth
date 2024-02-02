//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorld         c0       4
//   gWorldViewProj c8       4
//   globalScalars  c39      1
//   globalScalars2 c40      1
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.4696149977e-42 // 2476
    def c4, 9.99999975e-006, 2, 1, -1
    def c5, 0, 0, 0, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_tangent v4
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord4 o3.xyz
    dcl_texcoord5 o4.xyz
    dcl_color o5
    dcl_texcoord7 o6
    dcl_texcoord6 o7.x
    mul r0.xyz, c1, v3.y
    mad r0.xyz, v3.x, c0, r0
    mad r0.xyz, v3.z, c2, r0
    add r0.xyz, r0, c4.x
    nrm r1.xyz, r0
    mul r0.xyz, c1, v4.y
    mad r0.xyz, v4.x, c0, r0
    mad r0.xyz, v4.z, c2, r0
    add r0.xyz, r0, c4.x
    nrm r2.xyz, r0
    mul r0.xyz, r1.yzxw, r2.zxyw
    mad r0.xyz, r2.yzxw, r1.zxyw, -r0
    mov o2.xyz, r1
    mov o3.xyz, r2
    mul o4.xyz, r0, v4.w
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    mov r1.yw, c4
    mad o6.xyz, c3, r1.y, r0
    mad o5.z, v1.y, -v1.x, c4.z
    mul o5.y, c40.w, v1.y
    mul r0.x, c40.y, c40.z
    mad r0.y, v1.x, c39.z, r1.w
    mad o5.x, r0.x, r0.y, c4.z
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o10.zw, r0
    mov o2.w, r0.w
    mov o1.xy, v2
    mov o5.w, v1.w
    mov o6.w, c4.z
    mov o7.x, c5.x
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w
    
// approximately 39 instruction slots used
