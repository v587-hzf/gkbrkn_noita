dofile_once("mods/gkbrkn_noita/files/gkbrkn/helper.lua");
table.insert( perk_list, {
	id = "GKBRKN_PERK_WIP",
	ui_name = "WIP Perk",
	ui_description = "A work in progress",
	ui_icon = "mods/gkbrkn_noita/files/gkbrkn/perks/wip/icon_ui.png",
    perk_icon = "mods/gkbrkn_noita/files/gkbrkn/perks/wip/icon_ig.png",
    func = function( entity_perk_item, entity_who_picked, item_name )
        DoFileEnvironment(  "mods/gkbrkn_noita/files/gkbrkn/perks/wip/perk.lua", { 
            entity_perk_item = entity_perk_item, 
            entity_who_picked = entity_who_picked,
            item_name = item_name
        } );
        --dofile("mods/gkbrkn_noita/files/gkbrkn/perks/wip/perk.lua");
	end,
});