-- STUDY CASE --
-- 1 pelanggan membeli 3 barang yang berbeda. --
select transaksi.id_transaksi, customer.nama from transaksi 
inner join customer on transaksi.customer = customer.id_customer 
group by transaksi.customer 
having count(distinct transaksi.product) = 3 limit 1;


-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.--
 select product.nama, count(*) as star_seller from transaksi 
 inner join product on transaksi.product = product.id_product 
 group by product.id_product 
 order by star_seller desc limit 3;


-- Melihat kategori barang yang paling banyak barangnya --
select category.id_category, category.nama, count(product.id_product) as total_barang from product 
inner join category on product.kategori = category.id_category 
group by category.id_category 
order by total_barang desc limit 1;


-- Nominal rata-rata transaksi dalam 1 bulan terakhir --
select avg(total_harga) as rata_rata_transaksi from 
transaksi inner join product on transaksi.product = product.id_product;
