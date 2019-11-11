dofile( "files/gkbrkn/helper.lua");
local entity = GetUpdatedEntityID();
local x, y = EntityGetTransform( entity );
local check_radius = 256;

local nearby_entities = EntityGetInRadius( x, y, check_radius );
for _,nearby in pairs( nearby_entities ) do
    -- TODO  this is technically safer since disabled components don't show up, but if it's disabled then
    -- we probably don't want to consider this nugget anyway
    local shimmer = false;
    if EntityHasTag( nearby, "item_physics" ) then
        shimmer = true;
    end
    if shimmer == false then
        local components = EntityGetComponent( nearby, "LuaComponent" );
        if components ~= nil then
            for _,component in pairs(components) do
                -- TODO there needs to be a better more future proofed way to get gold nuggets
                if ComponentGetValue( component, "script_item_picked_up" ) == "data/scripts/items/gold_pickup.lua" then
                    shimmer = true;
                end
            end
        end
    end
    if shimmer == true then
        local nearby_x, nearby_y = EntityGetTransform( nearby );
        local offset_distance = 2;
        local shimmer = EntityLoad( "files/gkbrkn/actions/shimmering_treasure/shimmer.xml", nearby_x + Random(-offset_distance, offset_distance), nearby_y + Random(-offset_distance, offset_distance) );
        EntityAddChild( nearby, shimmer );
    end
end