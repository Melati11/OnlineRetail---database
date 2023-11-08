insert into customer (nama,email,alamat) values
    -> ("arjun", "arjun@gmail.com","surabaya"),
    -> ("bintang", "bintang@gmail.com", "jakarta"),
    -> ("diah", "diah@gmail.com", "karawang"),
    -> ("elang","elang@gmail.com", "jakarta"),
    -> ("gina", "gina@gmail.com", "bekasi"),
    -> ("jojo", "jojo@gmail.com", "lampung"),
    -> ("lia", "lia@gmail.com", "bekasi"),
    -> ("melati", "melati@gmail.com", "padang"),
    -> ("rifina", "fina@gmail.com", "karawang"),
    -> ("saman", "saman@gmail.com", "kalimantan");

insert into category(nama, kd_kategori, deskripsi) values
    -> ("fashion & aksesoris", "fa01", "fashion & aksesoris tersedia"),
    -> ("kosmetik & kecantikan", "kk02", "kosmetik & kecantikan tersedia"),
    -> ("kesehatan", "kn03", "kesehatan tersedia"),
    -> ("peralatan rumah tangga", "rt04", "peralatan rumah tangga tersedia"),
    -> ("sembako", "so05", "sembako tersedia"),
    -> ("gadget & elektronik", "ge06", "gadget & elektronik tersedia"),
    -> ("makanan & minumam", "mm07", "makanan & minuman tesedia"),
    -> ("olahraga" , "or08", "olahraga tersedia"),
    -> ("alat tulis kantor", "at09", "atk tersedia"),
    -> ("hobi & mainan", "hm10", "hobi & mainan tersedia");

insert into product(nama, kategori, harga) values
    -> ("baju", 1, 80000),
    -> ("kacamata", 1, 50000),
    -> ("skincare", 2, 500000),
    -> ("bodycare", 2, 500000),
    -> ("obat", 3, 200000),
    -> ("meja", 4, 150000),
    -> ("bumbu dapur", 5, 20000),
    -> ("vacuum cleaner", 6, 300000),
    -> ("handphone", 6, 1000000),
    -> ("mie instan", 7, 3000),
    -> ("sepatu", 8, 300000),
    -> ("bolpoin", 9, 2500),
    -> ("album nct", 10, 300000);

 insert into transaksi(jml_barang, customer, product, total_harga) values
    -> (2, 1, 1, 160000),
    -> (1, 2, 1, 80000),
    -> (1, 2, 2, 50000),
    -> (1, 3, 3, 500000),
    -> (1, 5, 4, 500000),
    -> (1, 5, 13, 300000),
    -> (1, 4, 5, 200000),
    -> (1, 6, 6, 150000),
    -> (1, 6, 8, 300000),
    -> (1, 6, 11, 300000),
    -> (1, 7, 3, 500000),
    -> (1, 7, 4, 500000),
    -> (1, 8, 3, 500000),
    -> (1, 8, 4, 500000),
    -> (1, 8, 13, 300000),
    -> (1, 9, 13, 300000),
    -> (2, 10, 7, 40000),
    -> (1, 10, 9, 1000000),
    -> (10, 10, 10, 30000),
    -> (2, 10, 12, 5000);

-- Mengambil data dari tabel --
select * from customer; -- Data customer/pelanggan --
select * from product; -- Data produk/barang --
select * from category; -- Data kategori --
select * from transaksi; --Data transaksi --

-- Mengubah data dari tabel --
update customer
    -> set alamat = "bekasi"
    -> where id_customer = 8;

 update product
    -> set nama = "pulpen"
    -> where id_product = 12;

 update category
    -> set nama = "makanan & minuman"
    -> where id_category = 7;

update transaksi
    -> set jml_barang = 1, product = 15, total_harga = 700000
    -> where id_transaksi = 1;

-- Menghapus data dari tabel --
delete from customer where nama = "elang";
delete from product where nama = "obat";
delete from category where kd_kategori = "or08";
delete from transaksi where id_transaksi = 20;