-----------------------------------
-- Area: Quicksand Caves
--  MOB: Antican Princeps
-- Note: PH for Sagittarius X-XIII
-----------------------------------
local ID = require("scripts/zones/Quicksand_Caves/IDs");
require("scripts/globals/regimes")
require("scripts/globals/mobs");

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 812, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 813, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 814, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 815, 1, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 816, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 817, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 818, 2, dsp.regime.type.GROUNDS)
    dsp.regime.checkRegime(player, mob, 819, 2, dsp.regime.type.GROUNDS)
end;

function onMobDespawn(mob)
    phOnDespawn(mob,ID.mob.Sagittarius_X_XIII_PH,10,14400); -- 4 hours
end;
