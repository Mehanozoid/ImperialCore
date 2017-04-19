#include "ScriptPCH.h" 

/*   
UPDATE item_template SET spellid_1 = 0, 
                   spellcooldown_1 = 0,   
                   spellcategorycooldown_1 = 0, 
                   spellcategorycooldown_2 = 0,   
                   spellcategorycooldown_3 = 0,   
                   spellcategorycooldown_4 = 0,   
                   spellcategorycooldown_5 = 0,   
                   ScriptName = "hearthstone_without_cooldown" WHERE entry = 6948; 
*/ 

class hearthstone_without_cooldown : public ItemScript 
{ 
public: 
   hearthstone_without_cooldown() : ItemScript("hearthstone_without_cooldown") {} 

   bool OnUse(Player* pPlayer, Item* pItem, SpellCastTargets const&) 
   { 
    if ((pPlayer->IsInCombat()) || (pPlayer->IsInFlight()) || (pPlayer->isDead())) 
    { 
     pPlayer->SendEquipError(EQUIP_ERR_NOT_IN_COMBAT, pItem, NULL); 
     return false; 
    } 

    if (pPlayer->IsMounted()) 
    { 
     pPlayer->SendEquipError(EQUIP_ERR_CANT_DO_RIGHT_NOW, pItem, NULL); 
     return false; 
    } 

          pPlayer->RemoveSpell(8690,true); 
          pPlayer->CastSpell(pPlayer,8690,false); 

    return false; 
   } 
}; 

void AddSC_hearthstone_without_cooldown() 
{ 
      hearthstone_without_cooldown(); 
}