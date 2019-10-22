-----------------------------------
-- Area: Outer Horutoto Ruins
--   NM: Jack of Swords
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/missions")
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("popTime", os.time())
end

function onMobRoam(mob)
    if os.time() - mob:getLocalVar("popTime") > 180 then
        DespawnMob(mob:getID())
    end
end

function onMobDeath(mob, player, isKiller)
    if player:getCurrentMission(WINDURST) == dsp.mission.id.windurst.FULL_MOON_FOUNTAIN and player:getCharVar("MissionStatus") == 1 then
        player:setCharVar("MissionStatus", 2)
    end
end