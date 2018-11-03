-----------------------------------
-- Area: Rolanberry Fields [S]
--   NM: Lamina
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.ADD_EFFECT, 1)
end

function onAdditionalEffect(mob, player)
    local resist = applyResistanceAddEffect(mob,player,dsp.magic.ele.EARTH,dsp.effect.SLOW)
    if resist <= 0.5 then
        return 0,0,0
    else
        local power = 1000
        local duration = 30
        if mob:getMainLvl() > player:getMainLvl() then
            duration = duration + (mob:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration,1,45)
        duration = duration * resist
        if not player:hasStatusEffect(dsp.effect.SLOW) then
            player:addStatusEffect(dsp.effect.SLOW, power, 0, duration)
        end
        return dsp.subEffect.NONE, dsp.msg.basic.ADD_EFFECT_STATUS, dsp.effect.SLOW
    end
end

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(5400, 7200)) -- 90 to 120 minutes
end