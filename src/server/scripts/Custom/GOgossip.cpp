#include "ScriptPCH.h"

/*
* Using and destroyed GoLootItem
*/

#define SPELL_EXPLODE

class go_gossip : public GameObjectScript
{
public:
    go_gossip() : GameObjectScript("go_gossip") { }

bool OnGossipHello(Player* player, GameObject* go)
{
	if (irand(0, 100) <= 25)
		SetLootState(GO_ACTIVATED);
	{
		pPlayer->CastSpell(pPlayer, SPELL_EXPLODE, true);
		go->GameObject()->ResetDoorOrButton();
		
		return true;
	}
	else m_lootState = GO_JUST_DEACTIVATED;
		
}

void AddSC_GOgossip()
{
    new go_gossip;
}