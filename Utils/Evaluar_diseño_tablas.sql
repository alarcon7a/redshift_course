select
	schema schemaname,
	"table" tablename,
	table_id tableid,
	size size_in_mb,
	case
		when diststyle not in ('EVEN', 'ALL') then 1
		else 0
	end has_dist_key,
	case
		when sortkey1 is not null then 1
		else 0
	end has_sort_key,
	case
		when encoded = 'Y' then 1
		else 0
	end has_col_encoding,
	cast(max_blocks_per_slice - min_blocks_per_slice as FLOAT) / greatest(NVL (min_blocks_per_slice, 0)::int, 1) ratio_skew_across_slices,
	cast(100 * dist_slice as FLOAT) /(
	select
		COUNT(distinct slice)
	from
		stv_slices) pct_slices_populated
from
	svv_table_info ti
join (
	select
		tbl, MIN(c) min_blocks_per_slice, MAX(c) max_blocks_per_slice, COUNT(distinct slice) dist_slice
	from
		(
		select
			b.tbl, b.slice, COUNT(*) as c
		from
			STV_BLOCKLIST b
		group by
			b.tbl, b.slice)
	where
		tbl in (
		selectselect
	schema schemaname,
	"table" tablename,
	table_id tableid,
	size size_in_mb,
	case
		when diststyle not in ('EVEN', 'ALL') then 1
		else 0
	end has_dist_key,
	case
		when sortkey1 is not null then 1
		else 0
	end has_sort_key,
	case
		when encoded = 'Y' then 1
		else 0
	end has_col_encoding,
	cast(max_blocks_per_slice - min_blocks_per_slice as FLOAT) / greatest(NVL (min_blocks_per_slice, 0)::int, 1) ratio_skew_across_slices,
	cast(100 * dist_slice as FLOAT) /(
	select
		COUNT(distinct slice)
	from
		stv_slices) pct_slices_populated
from
	svv_table_info ti
join (
	select
		tbl, MIN(c) min_blocks_per_slice, MAX(c) max_blocks_per_slice, COUNT(distinct slice) dist_slice
	from
		(
		select
			b.tbl, b.slice, COUNT(*) as c
		from
			STV_BLOCKLIST b
		group by
			b.tbl, b.slice)
	where
		tbl in (
		select
			table_id
		from
			svv_table_info)
	group by
		tbl) iq on
	iq.tbl = ti.table_id;
			table_id
		from
			svv_table_info)
	group by
		tbl) iq on
	iq.tbl = ti.table_id;