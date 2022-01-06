select "in.county", "in.building_type", "in.sqft", "in.state_name", "in.climate_zone_building_america", "bldg_id"
from {{ ref('New_England') }}
union
select "in.county", "in.building_type", "in.sqft", "in.state_name", "in.climate_zone_building_america", "bldg_id"
from {{ ref('Small_Towns') }}