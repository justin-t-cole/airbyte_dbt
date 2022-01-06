/*
This model wll join the results of the Day Filter and the Strip Mall filter based on building ID from two different source databases.

{{ ref('RetailStripMalls') }} --> bldg_id
{{ ref('Day_Filter') }} ---> bldg_id

*/
select {{ ref('Day_Filter') }}.timestamp, {{ ref('Day_Filter') }}.puma, {{ ref('RetailStripMalls') }}.* 
from {{ ref('Day_Filter') }}
inner join {{ ref('RetailStripMalls') }}
on {{ ref('RetailStripMalls') }}.bldg_id = {{ ref('Day_Filter') }}.bldg_id

