---------------------------------------------------------------------------------------------------
-- func: buff
-- desc: Gives some lowbie buffs
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:addStatusEffect(dsp.effect.REGAIN,300,0,0);
    player:addStatusEffect(dsp.effect.REFRESH,99,0,0);
    player:addStatusEffect(dsp.effect.REGEN,99,0,0);
end