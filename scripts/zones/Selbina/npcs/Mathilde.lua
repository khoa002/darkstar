-----------------------------------
-- Area: Selbina
--  NPC: Mathilde
-- Involved in Quest: Riding on the Clouds
-- !pos 12.578 -8.287 -7.576 248
-----------------------------------
local ID = require("scripts/zones/Selbina/IDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getQuestStatus(JEUNO,RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getVar("ridingOnTheClouds_3") == 1) then
        if (trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
            player:setVar("ridingOnTheClouds_3",0);
            player:tradeComplete();
            player:addKeyItem(dsp.ki.SOMBER_STONE);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.SOMBER_STONE);
        end
    end

end;

function onTrigger(player,npc)
    if (player:getCurrentMission(COP) ==MORE_QUESTIONS_THAN_ANSWERS and player:getVar("PromathiaStatus")==2) then
        player:startEvent(10005);
    else
        player:startEvent(171);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 10005) then
        player:setVar("PromathiaStatus",0);
        player:completeMission(COP,MORE_QUESTIONS_THAN_ANSWERS);
        player:addMission(COP,ONE_TO_BE_FEARED);
    end
end;