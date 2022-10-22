RegisterCommand('engine', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle == 0 or GetPedInVehicleSeat(vehicle, -1) ~= PlayerPedId() then return end
    if GetIsVehicleEngineRunning(vehicle) then
        QBCore.Functions.Notify(Lang:t("notify.engine_off"))
        -- exports['okokNotify']:Alert("Engine", Lang:t("notify.engine_off"), 2500, 'neutral')

    else
        QBCore.Functions.Notify(Lang:t("notify.engine_on"))
        -- exports['okokNotify']:Alert("Engine", Lang:t("notify.engine_on"), 2500, 'neutral')
    end
    SetVehicleEngineOn(vehicle, not GetIsVehicleEngineRunning(vehicle), false, true)
end)

RegisterKeyMapping('engine', 'Toggle Engine', 'MOUSE_WHEEL', 'IOM_WHEEL_UP')
