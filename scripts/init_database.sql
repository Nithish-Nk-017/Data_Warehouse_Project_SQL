--created a catalog datawarehouse
create catalog if not exists datawarehouse;

--created schemas for datawarehouse as bronze, silver and gold
create schema if not exists datawarehouse.bronze;
create schema if not exists datawarehouse.silver;
create schema if not exists datawarehouse.gold;
