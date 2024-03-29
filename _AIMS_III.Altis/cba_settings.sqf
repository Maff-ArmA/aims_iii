/*
	ARO cba_settings.sqf
	
	-	Disabled ACE Advanced Ballistics.
		Only pertinent to snipers / Longer range shots?
	
	-	Disabled Advanced Fatigue.
		Considering nerfing rather than disabling.

	-	Tweaked Advanced Medical.
		Advanced Settings, and enemy take less damage to react and die / go uncon.
	
	-	Disabled ACE Map Gestures.
		Players must communicate plan, not point on map.

	-	Disabled ACE Pointing.
		Players must talk others on to target/position.
	
	-	Disabled ACE Advanced Throwing.
		Can't be detected with Fired EH and... It is shite.
		
	-	Tweaked ACE Name Tags.
		Player names visible distance ~10 metres - aid players with formation spacings.
		
	-	Tweaked ACE User Interface.
		Less intrusive UI. Most important information is still displayed.
	
	-	Tweaked ACE Nightvision.
		Happy medium settings.

	-	Disabled ACE Tagging.
		No more graffiti everywhere!

	-	Tweaked ACRE2.
		Disabled terrain loss.
		Enabled full duplex - Multiple players can talk simultaneously. No more "missed" orders.
	
*/

// ACE Advanced Ballistics
force force ace_advanced_ballistics_ammoTemperatureEnabled = false;
force force ace_advanced_ballistics_barrelLengthInfluenceEnabled = false;
force force ace_advanced_ballistics_bulletTraceEnabled = false;
force force ace_advanced_ballistics_enabled = false;
force force ace_advanced_ballistics_muzzleVelocityVariationEnabled = false;
force force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force force ace_advanced_fatigue_enabled = false;
force force ace_advanced_fatigue_enableStaminaBar = false;
force force ace_advanced_fatigue_loadFactor = 1.2;
force force ace_advanced_fatigue_performanceFactor = 1;
force force ace_advanced_fatigue_recoveryFactor = 4;
force force ace_advanced_fatigue_swayFactor = 1;
force force ace_advanced_fatigue_terrainGradientFactor = 1.2;

// ACE Advanced Throwing
force force ace_advanced_throwing_enabled = true;
force force ace_advanced_throwing_enablePickUp = true;
force force ace_advanced_throwing_enablePickUpAttached = true;
force force ace_advanced_throwing_showMouseControls = true;
force force ace_advanced_throwing_showThrowArc = true;

// ACE Arsenal
force force ace_arsenal_allowDefaultLoadouts = false;
force force ace_arsenal_allowSharedLoadouts = false;
force force ace_arsenal_camInverted = false;
force force ace_arsenal_enableIdentityTabs = false;
force force ace_arsenal_enableModIcons = false;
force force ace_arsenal_EnableRPTLog = false;
force force ace_arsenal_fontHeight = 4.5;

// ACE Captives
force force ace_captives_allowHandcuffOwnSide = false;
force force ace_captives_allowSurrender = false;
force force ace_captives_requireSurrender = 0;
force force ace_captives_requireSurrenderAi = true;

// ACE Common
force force ace_common_allowFadeMusic = true;
force force ace_common_checkPBOsAction = 0;
force force ace_common_checkPBOsCheckAll = false;
force force ace_common_checkPBOsWhitelist = "[]";
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
force force ace_noradio_enabled = true;
force force ace_parachute_hideAltimeter = false;

// ACE Cook off
force force ace_cookoff_ammoCookoffDuration = 0.3;
force force ace_cookoff_enable = false;
force force ace_cookoff_enableAmmobox = true;
force force ace_cookoff_enableAmmoCookoff = true;
force force ace_cookoff_probabilityCoef = 0.2;

// ACE Explosives
force force ace_explosives_explodeOnDefuse = false;
force force ace_explosives_punishNonSpecialists = true;
force force ace_explosives_requireSpecialist = false;

// ACE Fragmentation Simulation
force force ace_frag_enabled = true;
force force ace_frag_maxTrack = 10;
force force ace_frag_maxTrackPerFrame = 10;
force force ace_frag_reflectionsEnabled = false;
force force ace_frag_spallEnabled = false;

// ACE Goggles
force force ace_goggles_effects = 2;
force force ace_goggles_showInThirdPerson = false;

// ACE Hearing
force force ace_hearing_autoAddEarplugsToUnits = false;
force force ace_hearing_disableEarRinging = false;
force force ace_hearing_earplugsVolume = 0.5;
force force ace_hearing_enableCombatDeafness = true;
force force ace_hearing_enabledForZeusUnits = true;
force force ace_hearing_unconsciousnessVolume = 0.2;

// ACE Interaction
force force ace_interaction_disableNegativeRating = true;
force force ace_interaction_enableMagazinePassing = true;
force force ace_interaction_enableTeamManagement = false;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = false;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
force force ace_interact_menu_useListMenu = true;

// ACE Logistics
force force ace_cargo_enable = true;
force force ace_cargo_loadTimeCoefficient = 5;
force force ace_cargo_paradropTimeCoefficent = 2.5;
force force ace_rearm_level = 0;
force force ace_rearm_supply = 0;
force force ace_refuel_hoseLength = 15;
force force ace_refuel_rate = 1;
force force ace_repair_addSpareParts = false;
force force ace_repair_autoShutOffEngineWhenStartingRepair = true;
force force ace_repair_consumeItem_toolKit = 0;
force force ace_repair_displayTextOnRepair = true;
force force ace_repair_engineerSetting_fullRepair = 0;
force force ace_repair_engineerSetting_repair = 0;
force force ace_repair_engineerSetting_wheel = 0;
force force ace_repair_fullRepairLocation = 0;
force force ace_repair_repairDamageThreshold = 0.6;
force force ace_repair_repairDamageThreshold_engineer = 0.4;
force force ace_repair_wheelRepairRequiredItems = 0;

// ACE Magazine Repack
force force ace_magazinerepack_timePerAmmo = 1;
force force ace_magazinerepack_timePerBeltLink = 4;
force force ace_magazinerepack_timePerMagazine = 1;

// ACE Map
force force ace_map_BFT_Enabled = false;
force force ace_map_BFT_HideAiGroups = false;
force force ace_map_BFT_Interval = 1;
force force ace_map_BFT_ShowPlayerNames = false;
force force ace_map_DefaultChannel = 1;
force force ace_map_mapGlow = true;
force force ace_map_mapIllumination = true;
force force ace_map_mapLimitZoom = false;
force force ace_map_mapShake = true;
force force ace_map_mapShowCursorCoordinates = true;
force force ace_markers_moveRestriction = 0;

// ACE Map Gestures
force force ace_map_gestures_defaultColor = [1,0.88,0,0.7];
force force ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
force force ace_map_gestures_enabled = false;
force force ace_map_gestures_interval = 0.03;
force force ace_map_gestures_maxRange = 8;
force force ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];

// ACE Map Tools
force force ace_maptools_drawStraightLines = true;
force force ace_maptools_rotateModifierKey = 1;

// ACE Medical
force force ace_medical_ai_enabledFor = 2;
force force ace_medical_AIDamageThreshold = 0.25;
force force ace_medical_allowLitterCreation = true;
force force ace_medical_allowUnconsciousAnimationOnTreatment = false;
force force ace_medical_amountOfReviveLives = -1;
force force ace_medical_bleedingCoefficient = 1;
force force ace_medical_blood_enabledFor = 2;
force force ace_medical_consumeItem_PAK = 0;
force force ace_medical_consumeItem_SurgicalKit = 0;
force force ace_medical_convertItems = 0;
force force ace_medical_delayUnconCaptive = 30;
force force ace_medical_enableAdvancedWounds = false;
force force ace_medical_enableFor = 0;
force force ace_medical_enableOverdosing = true;
force force ace_medical_enableRevive = 1;
force force ace_medical_enableScreams = true;
force force ace_medical_enableUnconsciousnessAI = 1;
force force ace_medical_enableVehicleCrashes = true;
force force ace_medical_healHitPointAfterAdvBandage = true;
force force ace_medical_increaseTrainingInLocations = false;
force force ace_medical_keepLocalSettingsSynced = true;
force force ace_medical_level = 2;
force force ace_medical_litterCleanUpDelay = 180;
force force ace_medical_litterSimulationDetail = 1;
force force ace_medical_maxReviveTime = 3600;
force force ace_medical_medicSetting = 2;
force force ace_medical_medicSetting_basicEpi = 0;
force force ace_medical_medicSetting_PAK = 2;
force force ace_medical_medicSetting_SurgicalKit = 1;
force force ace_medical_menu_allow = 1;
force force ace_medical_menu_maxRange = 3;
force force ace_medical_menu_openAfterTreatment = true;
force force ace_medical_menu_useMenu = 1;
force force ace_medical_menuTypeStyle = 0;
force force ace_medical_menuTypeStyleSelf = true;
force force ace_medical_moveUnitsFromGroupOnUnconscious = false;
force force ace_medical_painCoefficient = 1;
force force ace_medical_painEffectType = 1;
force force ace_medical_painIsOnlySuppressed = true;
force force ace_medical_playerDamageThreshold = 2;	//	25 = Too High!
force force ace_medical_preventInstaDeath = true;
force force ace_medical_remoteControlledAI = true;
force force ace_medical_useCondition_PAK = 1;
force force ace_medical_useCondition_SurgicalKit = 1;
force force ace_medical_useLocation_basicEpi = 0;
force force ace_medical_useLocation_PAK = 3;
force force ace_medical_useLocation_SurgicalKit = 0;

// ACE Mk6 Mortar
force force ace_mk6mortar_airResistanceEnabled = false;
force force ace_mk6mortar_allowCompass = true;
force force ace_mk6mortar_allowComputerRangefinder = true;
force force ace_mk6mortar_useAmmoHandling = true;

// ACE Name Tags
force ace_nametags_defaultNametagColor = [1,1,1,0.3];
force ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
force ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
force ace_nametags_nametagColorMain = [1,1,1,1];
force ace_nametags_nametagColorRed = [1,0.67,0.67,1];
force ace_nametags_nametagColorYellow = [1,1,0.67,1];
force ace_nametags_playerNamesMaxAlpha = 0.75;
force force ace_nametags_playerNamesViewDistance = 10;
force ace_nametags_showCursorTagForVehicles = true;
force force ace_nametags_showNamesForAI = true;
force ace_nametags_showPlayerNames = 2;
force force ace_nametags_showPlayerRanks = false;
force force ace_nametags_showSoundWaves = 0;
force force ace_nametags_showVehicleCrewInfo = true;
force force ace_nametags_tagSize = 4;

// ACE Nightvision
force force ace_nightvision_aimDownSightsBlur = 1;
force force ace_nightvision_disableNVGsWithSights = false;
force force ace_nightvision_effectScaling = 1;
force force ace_nightvision_fogScaling = 1;
force force ace_nightvision_noiseScaling = 1.2;
force force ace_nightvision_shutterEffects = true;

// ACE Overheating
force force ace_overheating_displayTextOnJam = true;
force force ace_overheating_enabled = true;
force force ace_overheating_overheatingDispersion = true;
force force ace_overheating_showParticleEffects = true;
force force ace_overheating_showParticleEffectsForEveryone = true;
force force ace_overheating_unJamFailChance = 0.1;
force force ace_overheating_unJamOnreload = false;

// ACE Pointing
force force ace_finger_enabled = false;
force force ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
force force ace_finger_indicatorForSelf = true;
force force ace_finger_maxRange = 0;

// ACE Pylons
force ace_pylons_enabledForZeus = false;
force ace_pylons_enabledFromAmmoTrucks = false;
force ace_pylons_rearmNewPylons = false;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = true;
force ace_pylons_searchDistance = 15;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 3;
force force ace_quickmount_enabled = true;
force force ace_quickmount_enableMenu = 3;
force force ace_quickmount_priority = 0;
force force ace_quickmount_speed = 18;

// ACE Respawn
force force ace_respawn_removeDeadBodiesDisconnected = true;
force force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force force ace_scopes_correctZeroing = true;
force force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force force ace_scopes_defaultZeroRange = 100;
force force ace_scopes_enabled = true;
force force ace_scopes_forceUseOfAdjustmentTurrets = false;
force force ace_scopes_overwriteZeroRange = false;
force force ace_scopes_simplifiedZeroing = false;
force force ace_scopes_useLegacyUI = false;
force force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force force ace_scopes_zeroReferenceHumidity = 0;
force force ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
force force ace_spectator_enableAI = true;
force force ace_spectator_restrictModes = 0;
force force ace_spectator_restrictVisions = 0;

// ACE Switch Units
ace_switchunits_enableSafeZone = true;
ace_switchunits_enableSwitchUnits = false;
ace_switchunits_safeZoneRadius = 100;
ace_switchunits_switchToCivilian = false;
ace_switchunits_switchToEast = false;
ace_switchunits_switchToIndependent = false;
ace_switchunits_switchToWest = false;

// ACE Tagging
force force ace_tagging_quickTag = 0;

// ACE Uncategorized
force force ace_gforces_enabledFor = 1;
force force ace_hitreactions_minDamageToTrigger = 0.2;
force force ace_inventory_inventoryDisplaySize = 2;
force force ace_laser_dispersionCount = 2;
force force ace_microdagr_mapDataAvailable = 0;
force force ace_microdagr_waypointPrecision = 3;
force force ace_optionsmenu_showNewsOnMainMenu = true;
force force ace_overpressure_distanceCoefficient = 1;

// ACE User Interface
force force ace_ui_allowSelectiveUI = true;
force force ace_ui_ammoCount = false;
force force ace_ui_ammoType = true;
force force ace_ui_commandMenu = false;
force force ace_ui_firingMode = true;
force force ace_ui_groupBar = false;
force force ace_ui_gunnerAmmoCount = false;
force force ace_ui_gunnerAmmoType = true;
force force ace_ui_gunnerFiringMode = false;
force force ace_ui_gunnerLaunchableCount = false;
force force ace_ui_gunnerLaunchableName = false;
force force ace_ui_gunnerMagCount = false;
force force ace_ui_gunnerWeaponLowerInfoBackground = false;
force force ace_ui_gunnerWeaponName = true;
force force ace_ui_gunnerWeaponNameBackground = false;
force force ace_ui_gunnerZeroing = true;
force force ace_ui_magCount = false;
force force ace_ui_soldierVehicleWeaponInfo = true;
force force ace_ui_staminaBar = false;
force force ace_ui_stance = false;
force force ace_ui_throwableCount = false;
force force ace_ui_throwableName = true;
force force ace_ui_vehicleAltitude = false;
force force ace_ui_vehicleCompass = false;
force force ace_ui_vehicleDamage = false;
force force ace_ui_vehicleFuelBar = false;
force force ace_ui_vehicleInfoBackground = false;
force force ace_ui_vehicleName = false;
force force ace_ui_vehicleNameBackground = false;
force force ace_ui_vehicleRadar = false;
force force ace_ui_vehicleSpeed = false;
force force ace_ui_weaponLowerInfoBackground = false;
force force ace_ui_weaponName = false;
force force ace_ui_weaponNameBackground = false;
force force ace_ui_zeroing = true;

// ACE Vehicle Lock
force force ace_vehiclelock_defaultLockpickStrength = 10;
force force ace_vehiclelock_lockVehicleInventory = false;
force force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE View Distance Limiter
force force ace_viewdistance_enabled = true;
force force ace_viewdistance_limitViewDistance = 2000;
force force ace_viewdistance_objectViewDistanceCoeff = 0;
force force ace_viewdistance_viewDistanceAirVehicle = 0;
force force ace_viewdistance_viewDistanceLandVehicle = 0;
force force ace_viewdistance_viewDistanceOnFoot = 0;

// ACE Weapons
force force  ace_common_persistentLaserEnabled = true;
force force ace_laserpointer_enabled = true;
force force ace_reload_displayText = true;
force force ace_weaponselect_displayText = true;

// ACE Weather
force force ace_weather_enabled = true;
force force ace_weather_updateInterval = 60;
force force ace_weather_windSimulation = true;

// ACE Wind Deflection
force force ace_winddeflection_enabled = true;
force force ace_winddeflection_simulationInterval = 0.05;
force force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force force ace_zeus_autoAddObjects = true;
force force ace_zeus_canCreateZeus = -1;
force force ace_zeus_radioOrdnance = false;
force force ace_zeus_remoteWind = false;
force force ace_zeus_revealMines = 0;
force force ace_zeus_zeusAscension = false;
force force ace_zeus_zeusBird = false;

// ACRE2
force force acre_sys_core_fullDuplex = true;
force force acre_sys_core_ignoreAntennaDirection = true;
force force acre_sys_core_interference = true;
acre_sys_core_postmixGlobalVolume = 1;
acre_sys_core_premixGlobalVolume = 1;
force force acre_sys_core_revealToAI = true;
acre_sys_core_spectatorVolume = 1;
force force acre_sys_core_terrainLoss = 0;
force acre_sys_core_ts3ChannelName = "";
force acre_sys_core_ts3ChannelPassword = "";
acre_sys_core_ts3ChannelSwitch = false;
force force acre_sys_core_unmuteClients = true;

// CBA UI
cba_ui_StorePasswords = 1;
