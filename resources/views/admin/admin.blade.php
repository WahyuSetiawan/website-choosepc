@extends ('admin/layout')

@section ('content')
<p>
    buat vga<br>
    select product_vga.id_vga, name, nama_criteria, sub from product_vga_detail 
    join product_vga on product_vga.id_vga = product_vga_detail.id_vga
    join ahp_criteria on ahp_criteria.id_criteria = product_vga_detail.id_criteria 
    join ahp_subcriteria on ahp_subcriteria.id_sub = product_vga_detail.id_subcriteria
</p>

<p>
    buat ram <br>
    select product_ram.id_ram, name, nama_criteria, sub from product_ram_detail 
    join product_ram on product_ram.id_ram = product_ram_detail.id_ram
    join ahp_criteria on ahp_criteria.id_criteria = product_ram_detail.id_criteria 
    join ahp_subcriteria on ahp_subcriteria.id_sub = product_ram_detail.id_subcriteria
</p>
<p>
    buat ram <br>
    select product_hdd.id_hdd, name, nama_criteria, sub from product_hdd_detail 
    join product_hdd on product_hdd.id_hdd = product_hdd_detail.id_hdd
    join ahp_criteria on ahp_criteria.id_criteria = product_hdd_detail.id_criteria 
    join ahp_subcriteria on ahp_subcriteria.id_sub = product_hdd_detail.id_subcriteria
</p>
<p>
    select product.id, product.name, 
    product_comp_universal.name,product_universal.value from product 
    join product_universal on product.id = product_universal.product
    join product_comp_universal on product_universal.universal = product_comp_universal.id
</p>
@endsection