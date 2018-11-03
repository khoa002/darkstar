-----------------------------------
-- Area: Ship_bound_for_Selbina
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.SHIP_BOUND_FOR_SELBINA] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6381, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6387, -- Obtained: <item>.
        GIL_OBTAINED            = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6390, -- Obtained key item: <keyitem>.
        FISHING_MESSAGE_OFFSET  = 7229, -- You can't fish here.
        ON_WAY_TO_SELBINA       = 7330, -- We're on our way to Selbina. We should be there in [less than an hour/about 1 hour/about 2 hours/about 3 hours/about 4 hours/about 5 hours/about 6 hours/about 7 hours] (# [minute/minutes] in Earth time).
        RAJMONDA_SHOP_DIALOG    = 7335, -- There's nothing like fishing to pass the time!
        MAERA_SHOP_DIALOG       = 7336, -- May I offer you items to help you on your journey?
        ARRIVING_SOON_SELBINA   = 7337, -- We are on our way to Selbina. We will be arriving soon.
    },
    mob =
    {
        ENAGAKURE = 17678351,
    },
    npc =
    {
    },
}

return zones[dsp.zone.SHIP_BOUND_FOR_SELBINA]