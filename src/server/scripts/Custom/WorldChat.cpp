#include "Chat.h"
#include "Common.h"

/* Colors */
#define MSG_COLOR_ORANGE "|cffFFA500"
#define MSG_COLOR_DARKORANGE "|cffFF8C00"
#define MSG_COLOR_RED "|cffFF0000"
#define MSG_COLOR_LIGHTRED "|cffD63931"
#define MSG_COLOR_ROYALBLUE "|cff4169E1"
#define MSG_COLOR_LIGHTBLUE "|cffADD8E6"
#define MSG_COLOR_YELLOW "|cffFFFF00"
#define MSG_COLOR_GREEN "|cff008000"
#define MSG_COLOR_PURPLE "|cffDA70D6"
#define MSG_COLOR_WHITE  "|cffffffff"
#define MSG_COLOR_SUBWHITE  "|cffbbbbbb"

/* Ranks */
#define ADMINISTRATOR "Admin"
#define HEADGM "Head GM"
#define GAMEMASTER "GM"
#define DEVELOPER "Developer"
#define OWNER "Owner"
#define VIP "Vip"
#define PLAYER "Player"
#define EVENTM "Event Master"

#define FACTION_SPECIFIC 0

std::string GetNameLink(Player* player)
{
        std::string name = player->GetName();
        std::string color;
        switch(player->getClass())
        {
        case CLASS_DEATH_KNIGHT:
                color = "|cffC41F3B|TInterface\\icons\\Spell_Deathknight_ClassIcon:15|t";
                break;
        case CLASS_DRUID:
                color = "|cffFF7D0A|TInterface\\icons\\ABILITY_DRUID_DEMORALIZINGROAR:15|t";
                break;
        case CLASS_HUNTER:
                color = "|cffABD473|TInterface\\icons\\Ability_Hunter_LockAndLoad:15|t";
                break;
        case CLASS_MAGE:
                color = "|cff69CCF0|TInterface\\icons\\Spell_MageArmor:15|t";
                break;
        case CLASS_PALADIN:
                color = "|cffF58CBA|TInterface\\icons\\Spell_Magic_MageArmor:15|t";
                break;
        case CLASS_PRIEST:
                color = "|cffFFFFFF|TInterface\\icons\\Spell_Holy_SearingLightPriest:15|t";
                break;
        case CLASS_ROGUE:
                color = "|cffFFF569|TInterface\\icons\\Ability_Rogue_Ambush:15|t";
                break;
        case CLASS_SHAMAN:
                color = "|cff0070DE|TInterface\\icons\\Spell_Shaman_StaticShock:15|t";
                break;
        case CLASS_WARLOCK:
                color = "|cff9482C9|TInterface\\icons\\Ability_Warlock_DemonicPower:15|t";
                break;
       case CLASS_WARRIOR:
               color = "|cffC79C6E|TInterface\\icons\\Ability_Warrior_OffensiveStance:15|t";
               break;
                           
        }
        return "|Hplayer:"+name+"|h|cffFFFFFF["+color+name+"|cffFFFFFF]|h|r";
}

class World_Chat : public CommandScript
{
    public:
    World_Chat() : CommandScript("World_Chat") { }

    static bool HandleWorldChatCommand(ChatHandler * pChat, const char * msg)
    {
        if(!*msg)
            return false;

        Player * player = pChat->GetSession()->GetPlayer();
        char message[1024];

        switch(player->GetSession()->GetSecurity())
        {
            case SEC_PLAYER:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_arena_2v2_1:15|t[Player][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_LIGHTBLUE, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_VIP:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_pvp_o_13:15|t[VIP][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_PURPLE, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_GAMEMASTER:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[GM][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(),  MSG_COLOR_YELLOW, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_EVENTM:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[Event Master][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_ORANGE, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_HEADGM:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[Head GM][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_GREEN, msg);
                sWorld->SendGlobalText(message, NULL);
            break;


                case SEC_DEVELOPER:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[Developer][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_ROYALBLUE, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_ADMINISTRATOR:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[Admin][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_RED, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

                case SEC_OWNER:
                snprintf(message, 1024, "[World][Owner][%s%s|r]: %s%s|r", MSG_COLOR_WHITE, player->GetName().c_str(), MSG_COLOR_RED, msg);
                sWorld->SendGlobalText(message, NULL);
            break;

            case SEC_CONSOLE:
                snprintf(message, 1024, "[World]|TInterface/ICONS/Achievement_general:15|t[%sAdministrator|r][%s%s|r]: %s%s|r", MSG_COLOR_RED, MSG_COLOR_LIGHTRED, player->GetName().c_str(),
                    MSG_COLOR_LIGHTBLUE, msg);
                sWorld->SendGlobalText(message, NULL);
            break;




        }
        return true;
    }

    std::vector<ChatCommand> GetCommands() const override
    {
            static std::vector<ChatCommand> HandleWorldChatCommandTable =
            {
                { "world",  rbac::RBAC_PERM_COMMAND_WORLD_CHAT, true, &HandleWorldChatCommand, ""},
            };
            return HandleWorldChatCommandTable;
    }
};

void AddSC_World_Chat()
{
	new World_Chat;
}