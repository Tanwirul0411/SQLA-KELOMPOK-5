mysql -u root -p

create database invoice;

use invoice;


create table Pelanggan(
    id_pelanggan int PRIMARY KEY,
    nama varchar(255),
    alamat varchar(255),
    no_telp varchar(15)
);

create table Pengiriman(
    id_pengiriman int PRIMARY KEY,
    id_produk int,
    jml_produk int,
    jenis_pengiriman varchar(50),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);

create table Transaksi(
    id_transaksi int PRIMARY KEY,
    id_pelanggan int,
    id_produk int,
    id_pengiriman int,
    tgl_byr date,
    jml_byr decimal(10, 2),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk),
    FOREIGN KEY (id_pengiriman) REFERENCES Pengiriman(id_pengiriman)
);

create table Produk(
    id_produk int PRIMARY KEY,
    nama varchar(255),
    stok int
);

create table Supplier(
    id_supplier int PRIMARY KEY,
    nama varchar(255),
    alamat varchar(255),
    id_produk int,
    no_telp varchar(15),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);

insert into Pelanggan values(
    "p-001",
    "ganyu",
    "jl. Sea of Cloud no 14, liyue harbour, teyvat ",
    "0812345678"
);

insert into Pengiriman values(
    "TF-001",
    "AM-1",
    "12",
    "Same Day"
);

insert into Transaksi values(
    "AX-001",
    "p-001",
    "AM-1",
    "KR-1",
    "2024-5-8",
    "250.000"
);

insert into Produk values(
    "AM-1",
    "AMO'S BOW",
    "999"
);

insert into Supplier values(
    "KIRA-1",
    "KIRARA EXPRESS",
    "HIBOKI VILLAGE, Inazuma",
    "AM-1",
    "08987654321"
);

desc Pelanggan;
desc Pengiriman;
desc Transaksi;
desc Produk;
desc Supplier;

select * from Pelanggan;
select * from Pengiriman;
select * from Transaksi;
select * from Produk;
select * from Supplier;