.text
.globl hello_world
.p2align 8
.type hello_world,@function
hello_world:
    s_endpgm
.rodata
.p2align 6
.amdhsa_kernel hello_world
    .amdhsa_group_segment_fixed_size 12288
    .amdhsa_user_sgpr_kernarg_segment_ptr 1
    .amdhsa_user_sgpr_dispatch_ptr 1
    .amdhsa_user_sgpr_private_segment_buffer 1
    .amdhsa_user_sgpr_private_segment_size 0
    .amdhsa_system_vgpr_workitem_id 2
    .amdhsa_system_sgpr_workgroup_id_x 1
    .amdhsa_next_free_vgpr 116
    .amdhsa_next_free_sgpr 60
    .amdhsa_ieee_mode 0
    .amdhsa_dx10_clamp 0
.end_amdhsa_kernel

.amdgpu_metadata
---
amdhsa.version: [ 1, 0 ]
amdhsa.kernels:
  - .name: hello_world
    .symbol: hello_world.kd
    .sgpr_count: 60
    .vgpr_count: 116
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .group_segment_fixed_size: 12288
    .private_segment_fixed_size: 0
    .wavefront_size: 64
    .reqd_workgroup_size : [256, 1, 1]
    .max_flat_workgroup_size: 256
...
.end_amdgpu_metadata

