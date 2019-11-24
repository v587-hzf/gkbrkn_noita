local entity = GetUpdatedEntityID();

local projectile = EntityGetFirstComponent( entity, "ProjectileComponent" );
if projectile ~= nil then
    local penetration = tonumber( ComponentGetValue( projectile, "ground_penetration_coeff" ) );
    local bounces = tonumber( ComponentGetValue( projectile, "bounces_left" ) );
    if penetration > 0 or bounces == 0 then
        ComponentSetValue( projectile, "ground_penetration_coeff", tostring( math.max( 2, penetration * 2 ) ) );
    end
end

local velocity = EntityGetFirstComponent( entity, "VelocityComponent" );
if velocity ~= nil then
    local mass = tonumber( ComponentGetValue( velocity, "mass" ) );
    ComponentSetValue( velocity, "mass", tostring( math.max( 2, mass * 2 ) ) );
end
