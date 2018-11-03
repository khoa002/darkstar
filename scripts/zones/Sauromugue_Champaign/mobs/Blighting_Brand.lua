-----------------------------------
-- Area: Sauromugue Champaign
--  MOB: Blighting Brand
-----------------------------------
require("scripts/globals/regimes")

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 100, 2, dsp.regime.type.FIELDS)
end;

function onMobDespawn(mob)
end;
