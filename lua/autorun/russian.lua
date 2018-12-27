---- Russian language strings

hook.Add("TTT2FinishedLoading", "ExampleInitT", function()
	if CLIENT then

		--Clairvoyant-Strings
    if CLAIRVOYANT then
      LANG.AddToLanguage("Русский", CLAIRVOYANT.name, "Ясновидящий")
  		LANG.AddToLanguage("Русский", "info_popup_" .. CLAIRVOYANT.name,
  			[[Вы ясновидящий!
              Переиграйте всех остальных с помощью ваших знаний!
              Не болтайте много о вашей способности, иначе вы быстро за это расплатитесь!]])
  		LANG.AddToLanguage("Русский", "body_found_" .. CLAIRVOYANT.abbr, "Он был ясновидящим.")
  		LANG.AddToLanguage("Русский", "search_role_" .. CLAIRVOYANT.abbr, "Этот человек был ясновидящим!")
  		LANG.AddToLanguage("Русский", "target_" .. CLAIRVOYANT.name, "Ясновидящий")
  		LANG.AddToLanguage("Русский", "ttt2_desc_" .. CLAIRVOYANT.name, [[Ясновидящий способен видеть, является ли игрок невиновным или имеет особую роль.
  Его цель — выжить, будучи невиновным.

  Также у вас есть ещё одна особенность: вы единственный, кто может убить шута, сделав его своим сообщником.]])
    end

    --Hitman-Strings
    if HITMAN then
  		LANG.AddToLanguage("Русский", HITMAN.name, "Киллер")
  		LANG.AddToLanguage("Русский", "info_popup_" .. HITMAN.name, [[Вы киллер!
  Постарайтесь заработать кредиты!]])
  		LANG.AddToLanguage("Русский", "body_found_" .. HITMAN.abbr, "Он был киллером.")
  		LANG.AddToLanguage("Русский", "search_role_" .. HITMAN.abbr, "Этот человек был киллером!")
  		LANG.AddToLanguage("Русский", "target_" .. HITMAN.name, "Киллер")
  		LANG.AddToLanguage("Русский", "ttt2_desc_" .. HITMAN.name, [[Киллер — это предатель, целью которого является убийство всех других ролей, кроме предателей.
  Киллер может зарабатывать кредиты только убивая свои цели.]])
    end

		--Infected-Strings
    if INFECTED then
      LANG.AddToLanguage("Русский", INFECTED.name, "Заражённый")
  		LANG.AddToLanguage("Русский", TEAM_INFECTED, "Команда заражённых")
  		LANG.AddToLanguage("Русский", "hilite_win_" .. TEAM_INFECTED, "Победа заражённых") -- name of base role of a team -> maybe access with GetTeamRoles(ROLES.INFECTED.team)[1].name
  		LANG.AddToLanguage("Русский", "win_" .. TEAM_INFECTED, "Заражённые победили!") -- teamname
  		LANG.AddToLanguage("Русский", "info_popup_" .. INFECTED.name, [[Теперь твоя очередь! Зарази их всех!]])
  		LANG.AddToLanguage("Русский", "body_found_" .. INFECTED.abbr, "Он был заражённым.")
  		LANG.AddToLanguage("Русский", "search_role_" .. INFECTED.abbr, "Этот человек был заражённым!")
  		LANG.AddToLanguage("Русский", "ev_win_" .. TEAM_INFECTED, "Омерзительные заражённые победили!")
  		LANG.AddToLanguage("Русский", "target_" .. INFECTED.name, "Заражённый")
  		LANG.AddToLanguage("Русский", "ttt2_desc_" .. INFECTED.name, [[Заражённый должен заразить всех игроков, убивая их, чтобы победить.
  Если игрок заражается, он становится похож на зомби и может заражать других игроков. Таким образом, вы можете создать целую армию.
  Однако стоит запомнить одну вещь: если главный заражённый (тот, кто был первым и имеет обычную модель) умрёт или покинет сервер, все остальные заражённые умрут.

  Если присутствует шут, не бойтесь заразить его.]])
    end

		--Jackal-Strings
		if JACKAL then
			LANG.AddToLanguage("Русский", JACKAL.name, "Шакал")
			LANG.AddToLanguage("Русский", TEAM_JACKAL, "Команда шакала")
			LANG.AddToLanguage("Русский", "info_popup_" .. JACKAL.name,
				[[Вы шакал!
				Постарайтесь убить все остальные роли! Это сложно, поэтому может понадобиться сообщник...]])
			LANG.AddToLanguage("Русский", "body_found_" .. JACKAL.abbr, "Он был шакалом.")
			LANG.AddToLanguage("Русский", "search_role_" .. JACKAL.abbr, "Этот человек был шакалом!")
			LANG.AddToLanguage("Русский", "target_" .. JACKAL.name, "Шакал")
			LANG.AddToLanguage("Русский", "ttt2_desc_" .. JACKAL.name, [[Шакал должен победить в одиночку или со своим сообщником!]])
			LANG.AddToLanguage("Русский", "hilite_win_" .. TEAM_JACKAL, "Победа шакала") -- name of base role of a team -> maybe access with GetTeamRoles(ROLES.SERIALKILLER.team)[1].name
			LANG.AddToLanguage("Русский", "win_" .. TEAM_JACKAL, "Шакал победил!") -- teamname
			LANG.AddToLanguage("Русский", "ev_win_" .. TEAM_JACKAL, "Злой шакал победил!")
			LANG.AddToLanguage("Русский", "credit_" .. JACKAL.abbr .. "_all", "Шакалы, вы награждены кредитами ({num}) за ваши действия.")
		end

    --Jester-Strings
    if JESTER then
      LANG.AddToLanguage("Русский", JESTER.name, "Шут")
  		LANG.AddToLanguage("Русский", TEAM_JESTER, "Команда шута")
  		LANG.AddToLanguage("Русский", "hilite_win_" .. TEAM_JESTER, "Победа шута") -- name of base role of a team -> maybe access with GetBaseRole(ROLE_JESTER) or JESTER.baserole
  		LANG.AddToLanguage("Русский", "win_" .. TEAM_JESTER, "Шут победил!") -- teamname
  		LANG.AddToLanguage("Русский", "info_popup_" .. JESTER.name, [[Вы шут! Создавайте проблемы и позвольте убить себя!]])
  		LANG.AddToLanguage("Русский", "body_found_" .. JESTER.abbr, "Он был шутом.")
  		LANG.AddToLanguage("Русский", "search_role_" .. JESTER.abbr, "Этот человек был шутом!")
  		LANG.AddToLanguage("Русский", "ev_win_" .. TEAM_JESTER, "Назойливый шут победил!")
  		LANG.AddToLanguage("Русский", "target_" .. JESTER.name, "Шут")
  		LANG.AddToLanguage("Русский", "ttt2_desc_" .. JESTER.name, [[Шут виден любому предателю, но не невиновным или другим «обычным» ролям (за исключением особых предателей или ясновидящего).
  Шут не может нанести никакого урона и не может убить себя. Если его убьют, он победит, поэтому не убивайте шута!]])
    end

    --Sidekick-Strings
    if SIDEKICK then
      LANG.AddToLanguage("Русский", SIDEKICK.name, "Сообщник")
  		LANG.AddToLanguage("Русский", "target_" .. SIDEKICK.name, "Сообщник")
  		LANG.AddToLanguage("Русский", "ttt2_desc_" .. SIDEKICK.name, [[Вы должны помочь победить своему товарищу!]])
  		LANG.AddToLanguage("Русский", "body_found_" .. SIDEKICK.abbr, "Он был сообщником.")
  		LANG.AddToLanguage("Русский", "search_role_" .. SIDEKICK.abbr, "Этот человек был сообщником!")
    end

		--Serialkiller-Strings

		if SERAIALKILLER then
			LANG.AddToLanguage("Русский", SERIALKILLER.name, "Маньяк")
			LANG.AddToLanguage("Русский", TEAM_SERIALKILLER, "Команда маньяка")
			LANG.AddToLanguage("Русский", "hilite_win_" .. TEAM_SERIALKILLER, "Победа маньяка") -- name of base role of a team -> maybe access with GetTeamRoles(SERIALKILLER.team)[1].name
			LANG.AddToLanguage("Русский", "win_" .. TEAM_SERIALKILLER, "Маньяк победил!") -- teamname
			LANG.AddToLanguage("Русский", "info_popup_" .. SERIALKILLER.name, [[Теперь твой очередь! Убей их всех!]])
			LANG.AddToLanguage("Русский", "body_found_" .. SERIALKILLER.abbr, "Он был маньяком.")
			LANG.AddToLanguage("Русский", "search_role_" .. SERIALKILLER.abbr, "Этот человек был!")
			LANG.AddToLanguage("Русский", "ev_win_" .. TEAM_SERIALKILLER, "Смертоносный маньяк победил!")
			LANG.AddToLanguage("Русский", "target_" .. SERIALKILLER.name, "Маньяк")
			LANG.AddToLanguage("Русский", "ttt2_desc_" .. SERIALKILLER.name, [[Маньяк должен убить всех игроков и остаться единственным выжившим, чтобы победить.
	У него есть доступ к собственному меню снаряжения ([C]), может видеть всех игроков сквозь стены, а также он способен распознать шута.]])
		end

		--Survivalist-Strings
		if SURVIVALIST then
			LANG.AddToLanguage("Русский", SURVIVALIST.name, "Выживальщик")
			LANG.AddToLanguage("Русский", "info_popup_" .. SURVIVALIST.name,
				[[Вы выживальщик!
					Постарайтесь выжить и по возможности защитить своих товарищей!]])
			LANG.AddToLanguage("Русский", "body_found_" .. SURVIVALIST.abbr, "Он был выживальщиком.")
			LANG.AddToLanguage("Русский", "search_role_" .. SURVIVALIST.abbr, "Этот человек был выживальщиком!")
			LANG.AddToLanguage("Русский", "target_" .. SURVIVALIST.name, "Выживальщик")
			LANG.AddToLanguage("Русский", "ttt2_desc_" .. SURVIVALIST.name, [[Выживальщик — это более лучший невиновный, потому что у него есть доступ к собственному меню снаряжения ([C]).
		Старайтесь защитить невиновных!]])
		end

		--Unknown-Strings
		if UNKNOWN then
			LANG.AddToLanguage("Русский", UNKNOWN.name, "Неизвестный")
			LANG.AddToLanguage("Русский", "info_popup_" .. UNKNOWN.name, [[Вы можете выбрать кем хотите быть...]])
			LANG.AddToLanguage("Русский", "body_found_" .. UNKNOWN.abbr, "Он был неизвестным.")
			LANG.AddToLanguage("Русский", "search_role_" .. UNKNOWN.abbr, "Этот человек был неизвестным!")
			LANG.AddToLanguage("Русский", "target_" .. UNKNOWN.name, "Неизвестный")
			LANG.AddToLanguage("Русский", "ttt2_desc_" .. UNKNOWN.name, [[Неизвестный может выбрать (более или менее) роль.
	Умрите от кого-нибудь, чтобы скопировать роль своего убийцы!]])
		end

		--Vampire-Strings
		if VAMPIRE then
			LANG.AddToLanguage("Русский", VAMPIRE.name, "Вампир")
			LANG.AddToLanguage("Русский", "info_popup_" .. VAMPIRE.name, [[Вы вампир!
	Пришло время вкусить крови!
	В противном случае, вы умрёте...]])
			LANG.AddToLanguage("Русский", "body_found_" .. VAMPIRE.abbr, "Он был вампиром.")
			LANG.AddToLanguage("Русский", "search_role_" .. VAMPIRE.abbr, "Этот человек был вампиром!")
			LANG.AddToLanguage("Русский", "target_" .. VAMPIRE.name, "Вампир")
			LANG.AddToLanguage("Русский", "ttt2_desc_" .. VAMPIRE.name, [[Вампир — это предатель, целью которого является убийство всех других ролей, кроме предателей.
	Вампир не имеет доступа к меню снаряжения ([C]), но он может превратиться в голубя, нажав [LALT] (клавиша медленной ходьбы). Чтобы сделать вампира более сбалансированным, он должен убивать другого игрока каждую минуту, иначе у него настанет жажда крови, в которой вампир теряет 1 здоровье каждую 2 секунду.
	При жажде крови вампир восстанавливает 50% от наносимого игрокам урона. Кроме того, он может просто превратиться в голубя, если захочет получить жажду крови. Таким образом, вы можете получить жажду крови, но избавиться от неё так не получиться.]])
		end

    --Rolesetup-Strings
    --[[
    The %-marks are the color codes.
    %0% --> Standardtext
    All other marks are hopefully self-explaining
    ]]
    LANG.AddToLanguage("Русский", "ttt_rs_preText", "0%В этом раунде %1%{traits} предатель (-ей)%0%, %2%{innos} невиновный (-ых)%0% и %3%{specs} наблюдатель (-ей)%0%.")
    LANG.AddToLanguage("Русский", "ttt_rs_postText", "Распределение ролей в этом раунде:")
    LANG.AddToLanguage("Русский", "ttt_rs_killText", "0%Вас убил %1%{killer}%0%. Роль: %2%{role}%0%.")
    LANG.AddToLanguage("Русский", "ttt_rs_suicideText", "0%Вас убил кто-то, кто сильно напоминает вас...")
    LANG.AddToLanguage("Русский", "ttt_rs_worldKillText", "0%Вас убил мир.")
	end
end)
