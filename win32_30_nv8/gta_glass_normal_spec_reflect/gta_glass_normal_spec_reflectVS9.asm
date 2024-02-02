//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldView;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   gWorld       c0       4
//   gWorldView   c4       4
//   gViewInverse c12      4
//

    vs_3_0
    def c230, 1.8395173895e+25, 3.9938258725e+24, 4.5435787456e+30, 3.0898631138e-42 // 2205
    def c8, 9.99999975e-006, 512, 1, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_color o4
    mul r0.xyz, c1, v3.y
    mad r0.xyz, v3.x, c0, r0
    mad r0.xyz, v3.z, c2, r0
    add r0.xyz, r0, c8.x
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o2.xyz, r0, r0.w
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add r0.xyz, r0, c3
    add r0.xyz, -r0, c15
    mov o3.xyz, -r0
    mul r0.xyz, c5, v0.y
    mad r0.xyz, v0.x, c4, r0
    mad r0.xyz, v0.z, c6, r0
    add r0.xyz, r0, c7
    add r0.w, r0.z, c8.y
    dp3 r0.w, r0.xyww, r0.xyww
    rsq r0.w, r0.w
    add r0.z, r0.z, c8.y
    mad r0.z, r0.z, -r0.w, c8.z
    rcp r0.w, r0.w
    mul r0.z, r0.z, r0.w
    rcp r0.z, r0.z
    mul o0.xy, r0, r0.z
    add r0.x, r0.w, c8.z
    mov o2.w, r0.w
    rcp r0.x, r0.x
    add o0.z, -r0.x, c8.z
    mov o0.w, c8.z
    mov o1.xy, v2
    mov o4, v1

// approximately 33 instruction slots used
