-----------------------------------------
-- ID: 5276
-- Old Quiver +6
-- When used, you will obtain one partial stack of Crude Arrows +6
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:getFreeSlotsCount() == 0) then
        result = 308
    end
    return result
end

function onItemUse(target)
    local quantity = math.random(99)
    target:addItem(18187,quantity)
end
