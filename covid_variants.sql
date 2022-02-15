select * from omi;
select distinct(location) from omi;
select distinct(variant) from omi;
select CAST(date as date)as new_dates,location,variant,num_sequences from omi;

select location,date,num_sequences_total from omi where variant = 'Omicron';

select sum(num_sequences) as total_omi,location from omi where variant = 'Omicron'group by location;

select sum(num_sequences) as total_kappa,location from omi where variant = 'Kappa'group by location;

select sum(num_sequences) as total_non_who,location from omi where variant = 'non_who'group by location;

select sum(num_sequences) as total_B_1_177,location from omi where variant = 'B.1.177'group by location;

select sum(num_sequences) as total_Lambda,location from omi where variant = 'Lambda'group by location;

select sum(num_sequences) as total_B_1_160,location from omi where variant = 'B.1.160'group by location;

select sum(num_sequences) as total_Epsilon,location from omi where variant = 'Epsilon'group by location;

select sum(num_sequences) as total_Eta,location from omi where variant = 'Eta'group by location;

select sum(num_sequences) as total_Gamma,location from omi where variant = 'Gamma'group by location;

select sum(num_sequences) as total_B_1_620,location from omi where variant = 'B.1.620'group by location;

select sum(num_sequences) as total_S_677H_Robin1,location from omi where variant = 'S:677H.Robin1'group by location;

select sum(num_sequences) as total_B_1_258,location from omi where variant = 'B.1.258'group by location;

select sum(num_sequences) as total_B_1_1_302,location from omi where variant = 'B.1.1.302'group by location;

select sum(num_sequences) as total_B_1_221,location from omi where variant = 'B.1.221'group by location;

select sum(num_sequences) as total_Delta,location from omi where variant = 'Delta'group by location;

select sum(num_sequences) as total_Alpha,location from omi where variant = 'Alpha'group by location;

select sum(num_sequences) as total_B_1_367,location from omi where variant = 'B.1.367'group by location;

select sum(num_sequences) as total_S_677P_Pelican,location from omi where variant = 'S:677P.Pelican'group by location;

select sum(num_sequences) as total_Beta,location from omi where variant = 'Beta'group by location;

select sum(num_sequences) as total_Mu,location from omi where variant = 'Mu'group by location;

select sum(num_sequences) as total_B519,location from omi where variant = 'B.1.1.519'group by location;

select sum(num_sequences) as total_Iota,location from omi where variant = 'Iota'group by location;

select sum(num_sequences) as total_B277,location from omi where variant = 'B.1.1.277'group by location;

select sum(num_sequences)/100 as percent_variants, variant from omi group by variant;