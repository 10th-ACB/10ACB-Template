CREATE TABLE IF NOT EXISTS `arsenal` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` text,
  `loadout` text,
  `scope` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CODE-UNIQUE` (`code`(5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

REPLACE INTO `arsenal` (`id`, `code`, `name`, `loadout`, `scope`) VALUES
	(10, 'c.b', '[PRG] Contractor - Black', 'hint "applying base loadout"; sleep 1;\r\n\r\n	("https://prgpmc.com/api/arsenal-fetch/index.php?ln=temp1") execvm "arsenal_fetch.sqf";\r\n\r\nhint "base loadout applied";\r\n\r\nhint "adding old items to arrays"; sleep 1;\r\n\r\n	_uniformItems = uniformItems player;\r\n	_vestItems = vestItems player;\r\n	_backpackItems = backpackItems player;\r\n\r\nhint "array items added to arrays, adding overlay"; sleep 1;\r\n\r\n	player forceAddUniform "PRG_CombatFatigues_Urban";\r\n	player addVest "PRG_PlateCarrier2_Urban";\r\n	player addHeadgear "PRG_HelmetB_Light_Urban";\r\n	player addGoggles "VSM_Balaclava2_black_Goggles";\r\n\r\nhint "overlay added, resyncing old items"; sleep 1;\r\n\r\n	{player addItemToUniform _x;} forEach _uniformItems;\r\n	{player addItemToVest _x;} forEach _vestItems;\r\n	{player addItemToBackpack _x;} forEach _backpackItems;\r\n\r\nhint "items synced, loadout fully applied";\r\n', 'public');