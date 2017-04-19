/*
 * Copyright (C) 2008-2017 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:
void AddSC_World_Chat();
void AddSC_channel_factions();
void AddSC_DuelReset();
void AddSC_Chat_AntiAd();
void AddSC_System_Censure();
void AddSC_custom_misc();
void AddSC_GOgossip();
void AddSC_hearthstone_without_cooldown();


// The name of this function should match:
// void Add${NameOfDirectory}Scripts()
void AddCustomScripts()
{
	AddSC_World_Chat();
	AddSC_channel_factions();
	AddSC_DuelReset();
	AddSC_Chat_AntiAd();
	AddSC_System_Censure();
	AddSC_custom_misc();
	AddSC_GOgossip();
	AddSC_hearthstone_without_cooldown();
}
