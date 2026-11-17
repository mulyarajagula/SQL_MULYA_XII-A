create table penjualan (
    id serial primary key,
    produk_id int,
    kelas varchar(5),
    jumlah int default 1 check (jumlah > 0),
    total_harga int not null check (total_harga > 0),
    tanggal DATE default current_DATE,
    constraint fk_penjualan_produk
        foreign key (produk_id) 
        references produk(id)
)
