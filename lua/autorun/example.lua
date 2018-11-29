---- Example language strings
--[[
how to use:
LANG.AddToLanguage("[Your Language]", "DO NOT CHANGE", "[Your Tranlslation]")
Please save file in [your_language].lua
]]

hook.Add("TTT2FinishedLoading", "ExampleInitT", function()
	if CLIENT then

		--Clairvoyant-Strings
    if CLAIRVOYANT then
      LANG.AddToLanguage("Example", CLAIRVOYANT.name, "Clairvoyant")
  		LANG.AddToLanguage("Example", "info_popup_" .. CLAIRVOYANT.name,
  			[[You are the Clairvoyant!
              Play them all with your knowledge against each other!
              Do not talk too much about your ability, otherwise you will quickly pay for it!]])
  		LANG.AddToLanguage("Example", "body_found_" .. CLAIRVOYANT.abbr, "This was a Clairvoyant...")
  		LANG.AddToLanguage("Example", "search_role_" .. CLAIRVOYANT.abbr, "This person was a Clairvoyant!")
  		LANG.AddToLanguage("Example", "target_" .. CLAIRVOYANT.name, "Clairvoyant")
  		LANG.AddToLanguage("Example", "ttt2_desc_" .. CLAIRVOYANT.name, [[The Clairvoyant is able to see whether a player is an innocent or a player has a special role.
  His goal is to survive the traitors as an innocent.

  In combination with the SIDEKICK role and the JESTER role, you can kill the Jester as the only one and get a free sidekick.]])
    end

    --Hitman-Strings
    if HITMAN then
  		LANG.AddToLanguage("Example", HITMAN.name, "Hitman")
  		LANG.AddToLanguage("Example", "info_popup_" .. HITMAN.name, [[You are a Hitman!
  Try to get some credits!]])
  		LANG.AddToLanguage("Example", "body_found_" .. HITMAN.abbr, "This was a Hitman...")
  		LANG.AddToLanguage("Example", "search_role_" .. HITMAN.abbr, "This person was a Hitman!")
  		LANG.AddToLanguage("Example", "target_" .. HITMAN.name, "Hitman")
  		LANG.AddToLanguage("Example", "ttt2_desc_" .. HITMAN.name, [[The Hitman is a Traitor (who works together with the other traitors) and the goal is to kill all other roles except the other traitor roles ^^
  The Hitman is just able to collect some credits if he kills his target.]])
    end

		--Infected-Strings
    if INFECTED then
      LANG.AddToLanguage("Example", INFECTED.name, "Infected")
  		LANG.AddToLanguage("Example", TEAM_INFECTED, "TEAM Infecteds")
  		LANG.AddToLanguage("Example", "hilite_win_" .. TEAM_INFECTED, "THE INF WON") -- name of base role of a team -> maybe access with GetTeamRoles(ROLES.INFECTED.team)[1].name
  		LANG.AddToLanguage("Example", "win_" .. TEAM_INFECTED, "The Infected has won!") -- teamname
  		LANG.AddToLanguage("Example", "info_popup_" .. INFECTED.name, [[Now its your turn! Infect them ALL.]])
  		LANG.AddToLanguage("Example", "body_found_" .. INFECTED.abbr, "This was a Infected...")
  		LANG.AddToLanguage("Example", "search_role_" .. INFECTED.abbr, "This person was a Infected!")
  		LANG.AddToLanguage("Example", "ev_win_" .. TEAM_INFECTED, "The ill Infected won the round!")
  		LANG.AddToLanguage("Example", "target_" .. INFECTED.name, "Infected")
  		LANG.AddToLanguage("Example", "ttt2_desc_" .. INFECTED.name, [[The Infected needs to infect every player to win. He will infect other players by killing them.
  If a player gets infected, the player looks like a zombie and is also able to infect other players. So you can build up a whole army.
  But there is one thing you need to get in mind: If the host (the main infected player with a normal model) will die or disconnect, each player that the host infected will die.

  If there is a Jester, feel free to infect him ]])
    end

		--Jackal-Strings
		if JACKAL then
			LANG.AddToLanguage("Example", JACKAL.name, "Jackal")
			LANG.AddToLanguage("Example", TEAM_JACKAL, "TEAM Jackal")
			LANG.AddToLanguage("Example", "info_popup_" .. JACKAL.name,
				[[You are the Jackal!
				Try to kill each other role! It's hard, so maybe you need a Sidekick...]])
			LANG.AddToLanguage("Example", "body_found_" .. JACKAL.abbr, "This was a Jackal...")
			LANG.AddToLanguage("Example", "search_role_" .. JACKAL.abbr, "This person was a Jackal!")
			LANG.AddToLanguage("Example", "target_" .. JACKAL.name, "Jackal")
			LANG.AddToLanguage("Example", "ttt2_desc_" .. JACKAL.name, [[The Jackal needs to win alone or with his sidekick!]])
			LANG.AddToLanguage("Example", "hilite_win_" .. TEAM_JACKAL, "THE JACK WON") -- name of base role of a team -> maybe access with GetTeamRoles(ROLES.SERIALKILLER.team)[1].name
			LANG.AddToLanguage("Example", "win_" .. TEAM_JACKAL, "The Jackal has won!") -- teamname
			LANG.AddToLanguage("Example", "ev_win_" .. TEAM_JACKAL, "The evil Jackal won the round!")
			LANG.AddToLanguage("Example", "credit_" .. JACKAL.abbr .. "_all", "Jackals, you have been awarded {num} equipment credit(s) for your performance.")
		end

    --Jester-Strings
    if JESTER then
      LANG.AddToLanguage("Example", JESTER.name, "Jester")
  		LANG.AddToLanguage("Example", TEAM_JESTER, "TEAM Jesters")
  		LANG.AddToLanguage("Example", "hilite_win_" .. TEAM_JESTER, "THE JES WON") -- name of base role of a team -> maybe access with GetBaseRole(ROLE_JESTER) or JESTER.baserole
  		LANG.AddToLanguage("Example", "win_" .. TEAM_JESTER, "The Jester has won!") -- teamname
  		LANG.AddToLanguage("Example", "info_popup_" .. JESTER.name, [[You are the JESTER! Make TROUBLE and let 'em kill you!]])
  		LANG.AddToLanguage("Example", "body_found_" .. JESTER.abbr, "This was a Jester...")
  		LANG.AddToLanguage("Example", "search_role_" .. JESTER.abbr, "This person was a Jester!")
  		LANG.AddToLanguage("Example", "ev_win_" .. TEAM_JESTER, "The goofy Jester won the round!")
  		LANG.AddToLanguage("Example", "target_" .. JESTER.name, "Jester")
  		LANG.AddToLanguage("Example", "ttt2_desc_" .. JESTER.name, [[The Jester is visible for any traitor, but not for innocents or other "normal" roles (except custom traitor roles or the Clairvoyant).
  The Jester can't do any damage or kill himself. But if he dies, he will WIN. So don't kill the Jester!]])
    end

    --Sidekick-Strings
    if SIDEKICK then
      LANG.AddToLanguage("Example", SIDEKICK.name, "Sidekick")
  		LANG.AddToLanguage("Example", "target_" .. SIDEKICK.name, "Sidekick")
  		LANG.AddToLanguage("Example", "ttt2_desc_" .. SIDEKICK.name, [[You need to win with your mate!]])
  		LANG.AddToLanguage("Example", "body_found_" .. SIDEKICK.abbr, "This was a Sidekick...")
  		LANG.AddToLanguage("Example", "search_role_" .. SIDEKICK.abbr, "This person was a Sidekick!")
    end

		--Serialkiller-Strings

		if SERAIALKILLER then
			LANG.AddToLanguage("Example", SERIALKILLER.name, "Serial Killer")
			LANG.AddToLanguage("Example", TEAM_SERIALKILLER, "TEAM Serial Killers")
			LANG.AddToLanguage("Example", "hilite_win_" .. TEAM_SERIALKILLER, "THE SK WON") -- name of base role of a team -> maybe access with GetTeamRoles(SERIALKILLER.team)[1].name
			LANG.AddToLanguage("Example", "win_" .. TEAM_SERIALKILLER, "The Serial Killer has won!") -- teamname
			LANG.AddToLanguage("Example", "info_popup_" .. SERIALKILLER.name, [[Now its your turn! Kill them ALL.]])
			LANG.AddToLanguage("Example", "body_found_" .. SERIALKILLER.abbr, "This was a Serial Killer...")
			LANG.AddToLanguage("Example", "search_role_" .. SERIALKILLER.abbr, "This person was a Serial Killer!")
			LANG.AddToLanguage("Example", "ev_win_" .. TEAM_SERIALKILLER, "The deadly Serial Killer won the round!")
			LANG.AddToLanguage("Example", "target_" .. SERIALKILLER.name, "Serial Killer")
			LANG.AddToLanguage("Example", "ttt2_desc_" .. SERIALKILLER.name, [[The Serialkiller needs to kill every player and must be the last survivor to win the game.
	He can access his own ([C]) shop and is able to see every player through the walls (as well as he is able to select the Jester from the other players).]])
		end

		--Survivalist-Strings
		if SURVIVALIST then
			LANG.AddToLanguage("Example", SURVIVALIST.name, "Survivalist")
			LANG.AddToLanguage("Example", "info_popup_" .. SURVIVALIST.name,
				[[You are a Survivalist!
					Try to survive and protect your mates if possible!]])
			LANG.AddToLanguage("Example", "body_found_" .. SURVIVALIST.abbr, "This was a Survivalist...")
			LANG.AddToLanguage("Example", "search_role_" .. SURVIVALIST.abbr, "This person was a Survivalist!")
			LANG.AddToLanguage("Example", "target_" .. SURVIVALIST.name, "Survivalist")
			LANG.AddToLanguage("Example", "ttt2_desc_" .. SURVIVALIST.name, [[The Survivalist is a better innocent, because he is able to access his own ([C]) shop.
		Try to protect the innocents!]])
		end

		--Unknown-Strings
		if UNKNOWN then
			LANG.AddToLanguage("Example", UNKNOWN.name, "Unknown")
			LANG.AddToLanguage("Example", "info_popup_" .. UNKNOWN.name, [[You can decide who you want to be...]])
			LANG.AddToLanguage("Example", "body_found_" .. UNKNOWN.abbr, "This was an Unknown...")
			LANG.AddToLanguage("Example", "search_role_" .. UNKNOWN.abbr, "This person was an Unknown!")
			LANG.AddToLanguage("Example", "target_" .. UNKNOWN.name, "Unknown")
			LANG.AddToLanguage("Example", "ttt2_desc_" .. UNKNOWN.name, [[The Unknown can decide (more or less) the role.
	Get killed by someone to copy the role of your killer!]])
		end

		--Vampire-Strings
		if VAMPIRE then
			LANG.AddToLanguage("Example", VAMPIRE.name, "Vampire")
			LANG.AddToLanguage("Example", "info_popup_" .. VAMPIRE.name, [[You are a Vampire!
	It's time for some blood!
	Otherwise, you will die...]])
			LANG.AddToLanguage("Example", "body_found_" .. VAMPIRE.abbr, "This was a Vampire...")
			LANG.AddToLanguage("Example", "search_role_" .. VAMPIRE.abbr, "This person was a Vampire!")
			LANG.AddToLanguage("Example", "target_" .. VAMPIRE.name, "Vampire")
			LANG.AddToLanguage("Example", "ttt2_desc_" .. VAMPIRE.name, [[The Vampire is a Traitor (who works together with the other traitors) and the goal is to kill all other roles except the other traitor roles ^^
	The vampire CAN'T access the ([C]) shop, but he can transform into a pigeon by pressing [LALT] (Walk-slowly key). To make it balanced, the Vampire needs to kill another player every minute. Otherwise, he will fall into Bloodlust. In Bloodlust, the Vampire loses 1 hp every 2 seconds.
	In Bloodlust, the vampire heals 50% of the damage he did to other players. In addition to that, he can just transform into Pigeon if he is in bloodlust. So you be also able to trigger into bloodlust, but it's not possible to undo it.]])
		end

    --Rolesetup-Strings
    --[[
    The %-marks are the color codes.
    %0% --> Standardtext
    All other marks are hopefully self-explaining
    ]]
    LANG.AddToLanguage("Example", "ttt_rs_preText", "0%There are %1%{traits} traitors%0%, %2%{innos} innocents%0% and %3%{specs} spectators%0% this round.")
    LANG.AddToLanguage("Example", "ttt_rs_postText", "The role distribution this round:")
    LANG.AddToLanguage("Example", "ttt_rs_killText", "0%You were killed by %1%{killer}%0%. Role: %2%{role}%0%.")
    LANG.AddToLanguage("Example", "ttt_rs_suicideText", "0%You were killed by someone called yourself...")
    LANG.AddToLanguage("Example", "ttt_rs_worldKillText", "0%You were killed by the world.")
	end
end)
