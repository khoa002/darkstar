-----------------------------------
-- Area: Waughroon Shrine
--  Mob: Titanis Max
-- KSNM: Prehistoric Pigeons
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/status")
-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(dsp.mobMod.SUPERLINK, mob:getShortID())

    dsp.mix.jobSpecial.config(mob, {
        specials =
        {
            {id = dsp.jsa.SOUL_VOICE, cooldown = 200, hpp = 95},
        },
    })
end

function onMobDeath(mob, player, isKiller)
end
