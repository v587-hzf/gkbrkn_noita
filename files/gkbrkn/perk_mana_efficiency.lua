table.insert( perk_list, {
	id = "GKBRKN_MANA_EFFICIENCY",
	ui_name = "Mana Efficiency",
	ui_description = "Spells drain slightly less mana.",
	ui_icon = "files/gkbrkn/perk_mana_efficiency_ui.png",
    perk_icon = "files/gkbrkn/perk_mana_efficiency_ig.png",
    func = function( entity_perk_item, entity_who_picked, item_name )
        EntityAddComponent( entity_who_picked, "ShotEffectComponent", { extra_modifier = "gkbrkn_mana_efficiency", } );
	end,
})