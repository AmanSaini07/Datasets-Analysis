select * from myntra

select distinct(ProductID),(ProductName),(Description) from myntra

select sum([Price (INR)])as total_price from myntra

select distinct(ProductBrand) from myntra

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='Titan'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='BEARDO'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='Mochi'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='Palm Tree'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='Just Wow'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand ='Louis Philippe Sport'

select distinct(ProductName),(ProductBrand) from myntra where ProductBrand = myntra.ProductBrand

select ProductName,Gender from myntra where Gender = 'Men'

select ProductName,Gender from myntra where Gender = 'Women'

select ProductBrand,Gender from myntra where Gender = myntra.Gender

select distinct(ProductBrand),(PrimaryColor),(Gender) from myntra where Gender = 'Men'

select distinct(ProductBrand),(ProductName),([Price (INR)]) from myntra

select distinct(ProductBrand),(PrimaryColor),(Gender) from myntra where Gender = 'Women'

select distinct(ProductBrand),(PrimaryColor),(Gender) from myntra where Gender = myntra.Gender

select distinct(ProductBrand),Gender from myntra where Gender='Men'

select distinct(ProductBrand),Gender from myntra where Gender='Women'

select distinct(ProductBrand),Gender from myntra where Gender='Unisex'


