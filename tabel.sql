create table customer(
    -> id_customer int auto_increment primary key,
    -> nama varchar(100) not null,
    -> email varchar(100) not null,
    -> alamat varchar(200) not null);

create table category(
    -> id_category int auto_increment primary key,
    -> nama varchar(100) not null,
    -> kd_kategori varchar(10) not null,
    -> deskripsi varchar(100) not null);

create table product(
    -> id_product int auto_increment primary key,
    -> nama varchar(100) not null,
    -> harga int not null,
    -> kategori int not null,
    -> foreign key (kategori) references category(id_category));

create table transaksi(
    -> id_transaksi int auto_increment primary key,
    -> jml_barang int not null,
    -> customer int not null,
    -> product int not null,
    -> foreign key (customer) references customer(id_customer),
    -> foreign key (product) references product(id_product),
    -> total_harga int not null);

-- Menghapus table --
drop table customer;
drop table product;
drop table category;
drop table transaksi;