Dvar.cg_development:set(1)
CoD.LobbyButtons.ZM_LAN = {
    stringRef = "^1ZM ^7Online",
    action = NavigateToLobby_SelectionList,
    param = "ZMLobbyOnline",
    customId = "btnZM",
    selectedFunc = IsMostRecentSessionMode,
    selectedParam = Enum.eModes.MODE_ZOMBIES,
    networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE,
    disabledFunc = f0_local3
}
CoD.LobbyButtons.MP_LAN = {
    stringRef = "^5MP ^7Online",
    action = NavigateCheckForFirstTime,
    param = {
        targetName = "MPLobbyMain",
        mode = Enum.eModes.MODE_MULTIPLAYER,
        firstTimeFlowAction = OpenMPFirstTimeFlow
    },
    customId = "btnMP",
    selectedFunc = IsMostRecentSessionMode,
    selectedParam = Enum.eModes.MODE_MULTIPLAYER,
    disabledFunc = f0_local1
}
CoD.LobbyButtons.CP_LAN = {
    stringRef = "^3CP ^7Online",
    action = NavigateCheckForFirstTime,
    param = {
        targetName = "CPLobbyMain",
        mode = Enum.LobbyMainMode.LOBBY_MAINMODE_CP,
        firstTimeFlowAction = OpenCPFirstTimeFlow
    },
    customId = "btnCP",
    selectedFunc = IsMostRecentSessionMode,
    selectedParam = Enum.eModes.MODE_CAMPAIGN,
    networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE,
    disabledFunc = f0_local2
}
CoD.LobbyButtons.ZM_CUSTOM_GAMES = {
    stringRef = "^1Zombies ^7Custom ^3Games",
    action = NavigateToLobby_SelectionList,
    param = "ZMLobbyOnlineCustomGame",
    customId = "btnCustomMatch"
}
CoD.LobbyButtons.ZM_SOLO_GAME = {
    stringRef = "^1Zombies ^7Solo",
    action = GetClientGameLobbyXUIDForClientNum,
    customId = "btnPlayLocal",
}
CoD.LobbyButtons.ZM_FIND_MATCH = {
    stringRef = "^1Zombies ^7Public ^5Match",
    action = OpenZMFindMatch,
    customId = "btnFindMatch"
}
CoD.LobbyButtons.PLAY_ONLINE = {
    stringRef = "^8CONNECT ^2ONLINE",
    action = LobbyToggleNetwork,
        networkMode = Engine.LiveConnectEnableDemonwareConnect,
        selectedParam = Engine.LobbyVM_CallFunc,
    customId = "btnPlayLocal",
    disabledFunc = CoD.LobbyBase.ChunkAllDownloading
}
CoD.LobbyButtons.ZM_READY_UP = {
    stringRef = "^1PRESS ^2TO ^3INJECT",
    action = SetPlayerReady,
    customId = "btnReadyUp",
        mainMode = Enum.LobbyMainMode.LOBBY_MAINMODE_ZM,
    networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE,
    lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME,
    lobbyMode = Enum.LobbyMode.LOBBY_MODE_CUSTOM,
    eGameModes = Enum.eGameModes.MODE_GAME_MATCHMAKING_MANUAL,
    lobbyTimerType = LuaEnums.TIMER_TYPE.NONE,
    disabledFunc = f0_local7
}
CoD.LobbyButtons.MP_CUSTOM_START_GAME = {
    stringRef = "MENU_START_GAME_CAPS",
    action = LobbyOnlineCustomLaunchGame_SelectionList,
    customId = "btnStartGame",
        selectedFunc = LobbyToggleNetwork, 
    disabledFunc = MPStartCustomButtonDisabled
}
