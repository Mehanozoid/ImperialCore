/*
* Copyright (C) 2008 - 2011 Trinity <http://www.trinitycore.org/>
*
* Copyright (C) 2006 - 2011 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
*
* Copyright (C) 2011 Arcanum Core Private <https://bitbucket.org/Dimitro/arcanum-core-private/>
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include "ScriptPCH.h"
#include "Config.h"

class ip_check : public PlayerScript
{
public:
    ip_check() : PlayerScript("ip_check") {}

    void AtLogin(Player* player)
    {
        if (sWorld->getBoolConfig(CONFIG_MULTIBOXING_KICK_ENABLE))
        {
            if (player->GetSession()->GetSecurity() > SEC_PLAYER)
                return;

            PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_IP_COUNT);
            stmt->setUInt32(0, player->GetSession()->GetAccountId());
            PreparedQueryResult result = LoginDatabase.Query(stmt);

            if(!result)
                return;

            Field* fields = result->Fetch();
            uint16 count = fields[0].GetUInt16();

            if (!count)
                return;

            if (count > 1)
                player->GetSession()->KickPlayer();
        }
        return;
    }
};

void AddSC_custom_misc()
{
    new ip_check();
}