/* Copyright (C) 2006 - 2009 BBScript
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ########################
## BBCore EventAI system ##
######################## */
 
#include "ScriptedPch.h"
#include "eventai.h"

/* #############
## npc_kobold ##
############# */

struct npc_koboldAI : public ScriptedAI
{
	npc_koboldAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	void EnterCombat(Unit *pWho)
	{
		DoScriptText(RAND(SAY_VERMIN1,SAY_VERMIN2), me, pWho);
	}
};

CreatureAI* GetAI_npc_kobold(Creature* pCreature)
{
	return new npc_koboldAI(pCreature);
}

/* ##################
## npc_defias_thug ##
################## */

struct npc_defias_thugAI : public ScriptedAI
{
	npc_defias_thugAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	void EnterCombat(Unit *pWho)
	{
		switch(rand()%30)
		{
			case 0: DoScriptText(RAND(SAY_DEFIAS1,SAY_DEFIAS2,SAY_DEFIAS3), me, pWho); break;
		}
	}
};

CreatureAI* GetAI_npc_defias_thug(Creature *pCreature)
{
	return new npc_defias_thugAI(pCreature);
}

/* ###################
## npc_kobold_miner ##
################### */

struct npc_kobold_minerAI : public ScriptedAI
{
	npc_kobold_minerAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 PierceArmorTimer;
	
	void Reset()
	{
		PierceArmorTimer = urand(4000,14100);
	}
	
	void EnterCombat(Unit *pWho)
	{
		switch(rand()%30)
		{
			case 0: DoScriptText(SAY_VERMIN1, me, pWho); break;
		}
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
		if(PierceArmorTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_PIERCE);
			PierceArmorTimer = urand(38000,42000);
		}else PierceArmorTimer -= diff;
		
		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_kobold_miner(Creature *pCreature)
{
	return new npc_kobold_minerAI(pCreature);
}

/* ##################
## npc_mine_spider ##
################## */

struct npc_mine_spiderAI : public ScriptedAI
{
	npc_mine_spiderAI(Creature *c) : ScriptedAI(c) {Reset();}

	uint32 PoisonTimer;
	
	void Reset()
	{
		PoisonTimer = 4500;
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
		if(PoisonTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_POISON);
			PoisonTimer = urand(18000,28000);
		}else PoisonTimer -= diff;
		
		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_mine_spider(Creature *pCreature)
{
	return new npc_mine_spiderAI(pCreature);
}

/* #####################
## npc_murloc_forager ##
##################### */

struct npc_murloc_foragerAI : public ScriptedAI
{
	npc_murloc_foragerAI(Creature *c) : ScriptedAI(c) {Reset();}

	bool Potion;

	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
		
		if(me->GetHealth() < (me->GetMaxHealth() / 100 * 40) && !Potion)
		{
			Potion = true;
			DoCast(me, SPELL_POTION);
		}
	
		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_murloc_forager(Creature *pCreature)
{
	return new npc_murloc_foragerAI(pCreature);
}

/* #######################
## npc_skeletal_warrior ##
####################### */

struct npc_skeletal_warriorAI : public ScriptedAI
{
	npc_skeletal_warriorAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	bool Battle;
	uint32 HarmstringTimer;
	
	void Reset()
	{
		HarmstringTimer = urand(2100,13700);
	}
	
	void EnterCombat(Unit *pWho)
	{
		Battle = true;
		DoCast(me, SPELL_BATTLE);
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
		
		if(HarmstringTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_HARMST);
			HarmstringTimer = urand(10200,20600);
		}else HarmstringTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_skeletal_warrior(Creature *pCreature)
{
	return new npc_skeletal_warriorAI(pCreature);
}

/* #########################
## npc_ruklar_the_trapper ##
######################### */

struct npc_ruklar_the_trapperAI : public ScriptedAI
{
	npc_ruklar_the_trapperAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 PierceArmorTimer;
	uint32 NetTimer;	
	
	void Reset()
	{
		PierceArmorTimer = 8200;
		NetTimer = 19600;
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(PierceArmorTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_PIERCE);
			PierceArmorTimer = urand(45000,50000);
		}else PierceArmorTimer -= diff;
		
		if(NetTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_NET);
			NetTimer = urand(21000,31000);
		}else NetTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_ruklar_the_trapper(Creature *pCreature)
{
	return new npc_ruklar_the_trapperAI(pCreature);
}

/* #############
## npc_thuros ##
############# */

struct npc_thurosAI : public ScriptedAI
{
	npc_thurosAI(Creature *c) : ScriptedAI(c) {Reset();}

	void EnterCombat(Unit *pWho)
	{
		switch(rand()%40)
		{
			case 0: DoScriptText(RAND(SAY_DEFIAS1,SAY_DEFIAS2,SAY_DEFIAS3), me, pWho); break;
		}
	}
};

CreatureAI* GetAI_npc_thuros(Creature *pCreature)
{
	return new npc_thurosAI(pCreature);
}

/* ###########################
## npc_diseased_timber_wolf ##
########################### */

struct npc_diseased_timber_wolfAI : public ScriptedAI
{
	npc_diseased_timber_wolfAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	bool Disease;
	
	void UpdateAI(const uint32 diff)
	{
		if(!me->getVictim())
		{
			Disease = true;
			DoCast(me, SPELL_DISEASE);
		}
	}

};

CreatureAI* GetAI_npc_diseased_timber_wolf(Creature *pCreature)
{
	return new npc_diseased_timber_wolfAI(pCreature);
}

/* ##########################
## npc_narg_the_taskmaster ##
########################## */

struct npc_narg_the_taskmasterAI : public ScriptedAI
{
	npc_narg_the_taskmasterAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 BattleShoutTimer;
	
	void Reset()
	{
		BattleShoutTimer = 2000;
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
		
		if(BattleShoutTimer < diff)
		{
			DoCast(me, SPELL_BSHOUT);
		}else BattleShoutTimer -= diff;
		
		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_npc_narg_the_taskmaster(Creature *pCreature)
{
	return new npc_narg_the_taskmasterAI(pCreature);
}

/* ######################
## npc_defias_cutpurse ##
###################### */

struct npc_defias_cutpurseAI : public ScriptedAI
{
	npc_defias_cutpurseAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 BackstabTimer;
	
	void Reset()
	{
		BackstabTimer = 1100;
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(BackstabTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_BSTAB);
			BackstabTimer = urand(2400,7900);
		}else BackstabTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_defias_cutpurse(Creature *pCreature)
{
	return new npc_defias_cutpurseAI(pCreature);
}

/* ######################
## npc_defias_smuggler ##
###################### */

struct npc_defias_smugglerAI : public ScriptedAI
{
	npc_defias_smugglerAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 phase;
	uint32 BackstabTimer;
	uint32 ThrowTimer;
		
	void Reset()
	{
		phase = 1;
		BackstabTimer = urand(1300,7300);
	}
	
	void EnterCombat(Unit *pWho)
	{
		if (phase == 1)
		{
			DoCast(me->getVictim(), SPELL_THROW);
		}
		
		if (phase == 2)
		{
			me->DoFleeToGetAssistance();
			DoScriptText(SAY_FLEE, me, pWho);
		}
		
		switch(rand()%5)
		{
			case 0: DoScriptText(RAND(SAY_DEFIAS1,SAY_DEFIAS2,SAY_DEFIAS3), me, pWho); break;
		}
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(phase == 1 && HealthBelowPct(15)){
			phase = 2;
		}
		
		if(BackstabTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_BSTAB);
			BackstabTimer = urand(4800,4900);
		}else BackstabTimer -= diff;
		
		if(me->IsWithinDist(me->getVictim(), urand(5.0f,30.0f)))
		{
			DoCast(me->getVictim(), SPELL_THROW);
			ThrowTimer = urand(3500,4100);
		}
		
		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_defias_smuggler(Creature *pCreature)
{
	return new npc_defias_smugglerAI(pCreature);
}

/* ####################
## npc_riverpaw_runt ##
#################### */

struct npc_riverpaw_runtAI : public ScriptedAI
{
	npc_riverpaw_runtAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 phase;
	
	void Reset()
	{
		phase = 1;
	}
	
	void EnterCombat(Unit *pWho)
	{
		if(phase == 1)
		{
			DoMeleeAttackIfReady();
		}
		
		if(phase == 2)
		{
			me->DoFleeToGetAssistance();
			DoScriptText(SAY_FLEE, me, pWho);
		}
		
		switch(rand()%30)
		{
			case 0: DoScriptText(RAND(SAY_RIVER1,SAY_RIVER2), me, pWho); break;
		}
		
		if (phase == 2)
		{
			me->DoFleeToGetAssistance();
			DoScriptText(SAY_FLEE, me, pWho);
		}
		
	}
	
	void UpdateAI(const uint32 /* diff */)
	{
		if(!UpdateVictim())
			return;
	
		if(phase == 1 && HealthBelowPct(15)){
			phase = 2;
		}
		
		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_riverpaw_runt(Creature *pCreature)
{
	return new npc_riverpaw_runtAI(pCreature);
}

/* ##########################
## npc_riverpaw_taskmaster ##
########################## */

struct npc_riverpaw_taskmasterAI : public ScriptedAI
{
	npc_riverpaw_taskmasterAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 phase;
	uint32 QuickBloodTimer;
	
	void Reset()
	{
		phase = 1;
		QuickBloodTimer = urand(5900,7200);
	}
	
	void EnterCombat(Unit *pWho)
	{
		if(phase == 1)
		{
			DoMeleeAttackIfReady();
		}
		
		if(phase == 2)
		{
			me->DoFleeToGetAssistance();
			DoScriptText(SAY_FLEE, me, pWho);
		}
		
		switch(rand()%15)
		{
			case 0: DoScriptText(RAND(SAY_RIVER1,SAY_RIVER2), me, pWho); break;
		}
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(phase == 1 && HealthBelowPct(15)){
			phase = 2;
		}
		
		if(QuickBloodTimer < diff)
		{
			DoCast(me,SPELL_QBLUST);
			QuickBloodTimer = urand(15200,16300);
		}else QuickBloodTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};		

CreatureAI* GetAI_npc_riverpaw_taskmaster(Creature *pCreature)
{
	return new npc_riverpaw_taskmasterAI(pCreature);
}

/* ###############
## npc_morgaine ##
############### */

struct npc_morgaineAI : public ScriptedAI
{
	npc_morgaineAI(Creature *c) : ScriptedAI(c) {Reset();}

	uint32 BackstabTimer;
	uint32 GougeTimer;
	
	void Reset()
	{
		BackstabTimer = 5500;
		GougeTimer = 1800;
	}
		
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(BackstabTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_BSTAB);
			BackstabTimer = urand(3400,5400);	
		}else BackstabTimer -= diff;
		
		if(GougeTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_GOUGE);
			GougeTimer = 16300;
		}else GougeTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_morgaine(Creature *pCreature)
{
	return new npc_morgaineAI(pCreature);
}

/* ######################
## npc_gruff_swiftbite ##
###################### */

struct npc_gruff_swiftbiteAI : public ScriptedAI
{
	npc_gruff_swiftbiteAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 ThrashTimer;
	
	void Reset()
	{
		ThrashTimer = 2000;
	}
	
	void UpdateAI(const uint32 diff)
	{
		if(!UpdateVictim())
			return;
			
		if(ThrashTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_THRASH);
			ThrashTimer = urand(16000,18000);
		}else ThrashTimer -= diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_gruff_swiftbite(Creature *pCreature)
{
	return new npc_gruff_swiftbiteAI(pCreature);
}

/* ######################
## npc_garrick_padfoot ##
###################### */

struct npc_garrick_padfootAI : public ScriptedAI
{
	npc_garrick_padfootAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	uint32 phase;
	
	void Reset()
	{
		phase = 1;
	}
	
	void EnterCombat(Unit *pWho)
	{
		if(phase == 1)
		{
			DoMeleeAttackIfReady();
		}
		
		if(phase == 2)
		{
			DoScriptText(SAY_PADFOOT, me, pWho);
		}
	}
	
	void UpdateAI(const uint32 /* diff */)
	{
	
		if(!UpdateVictim())
			return;
		
		if(phase == 1 && me->getVictim()){
			phase = 2;
		}
		
		DoMeleeAttackIfReady();		
	}
	
};

CreatureAI* GetAI_npc_garrick_padfoot(Creature *pCreature)
{
	return new npc_garrick_padfootAI(pCreature);
}

/* #####################
## npc_stonetusk_boar ##
##################### */

struct npc_stonetusk_boarAI : public ScriptedAI
{
	npc_stonetusk_boarAI(Creature *c) : ScriptedAI(c) {Reset();}
	
	void EnterCombat(Unit *pWho)
	{
		DoCast(me->getVictim(), SPELL_CHARGE);
	}
	
	void UpdateAI(const uint32 /* diff */)
	{
		if(!UpdateVictim())
			return;

		DoMeleeAttackIfReady();
	}
	
};

CreatureAI* GetAI_npc_stonetusk_boar(Creature *pCreature)
{
	return new npc_stonetusk_boarAI(pCreature);
}

/* #####################
## npc_harvest_reaper ##
##################### */

struct npc_harvest_reaperAI : public ScriptedAI
{
	npc_harvest_reaperAI(Creature *c) : ScriptedAI(c) {Reset();}

	uint32 WideSlashTimer;

	void Reset()
	{
		WideSlashTimer = urand(2000,6000); 
	}

	void UpdateAI(const uint32 diff)
	{
		if(!Updatevictim())
			return;
		
		if(WideSlashTimer < diff)
		{
			DoCast(me->getVictim(), SPELL_WIDES);
			WideSlashTimer = urand(14000,22100);
		}else WideSlashTimer -=diff;
		
		DoMeleeAttackIfReady();
	}

};

CreatureAI* GetAI_npc_harvest_reaperAI(Creature *pCreature)
{
	return new npc_harvest_reaperAI(pCreature);
}

void AddSC_eventai()
{
	Script *newscript;
	
	newscript = new Script;
	newscript->Name="npc_defias_thug";
	newscript->GetAI = &GetAI_npc_defias_thug;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_kobold";
	newscript->GetAI = &GetAI_npc_kobold;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_kobold_miner";
	newscript->GetAI = &GetAI_npc_kobold_miner;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_mine_spider";
	newscript->GetAI = &GetAI_npc_mine_spider;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_murloc_forager";
	newscript->GetAI = &GetAI_npc_murloc_forager;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_skeletal_warrior";
	newscript->GetAI = &GetAI_npc_skeletal_warrior;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_ruklar_the_trapper";
	newscript->GetAI = &GetAI_npc_ruklar_the_trapper;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_thuros";
	newscript->GetAI = &GetAI_npc_thuros;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_diseased_timber_wolf";
	newscript->GetAI = &GetAI_npc_diseased_timber_wolf;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_narg_the_taskmaster";
	newscript->GetAI = &GetAI_npc_narg_the_taskmaster;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_defias_cutpurse";
	newscript->GetAI = &GetAI_npc_defias_cutpurse;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_defias_smuggler";
	newscript->GetAI = &GetAI_npc_defias_smuggler;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_riverpaw_runt";
	newscript->GetAI = &GetAI_npc_riverpaw_runt;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name="npc_riverpaw_taskmaster";
	newscript->GetAI = &GetAI_npc_riverpaw_taskmaster;
	newscript->RegisterSelf();	
	
	newscript = new Script;
	newscript->Name="npc_morgaine";
	newscript->GetAI = &GetAI_npc_morgaine;
	newscript->RegisterSelf();	
	
	newscript = new Script;
	newscript->Name="npc_gruff_swiftbite";
	newscript->GetAI = &GetAI_npc_gruff_swiftbite;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_garrick_padfoot";
	newscript->GetAI = &GetAI_npc_garrick_padfoot;
	newscript->RegisterSelf();
	
	newscript = new Script;
	newscript->Name="npc_stonetusk_boar";
	newscript->GetAI = &GetAI_npc_stonetusk_boar;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name="npc_harvest_reaper";
	newscript->GetAI = &GetAI_npc_harvest_reaper;
	newscript->RegisterSelf();
}
