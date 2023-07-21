Target = {}

function Target.addPed(entity, data)
    local optionId = ("%s:open_shop_%s:%s"):format(cache.resource, data.vehicleShopKey, data.buyPointIndex)

    exports["ox_target"]:addLocalEntity(entity, {
        {
            name = optionId,
            label = "Open Vehicle Shop",
            icon = "fa-solid fa-shop",
            event = nil, -- TODO
            distance = 4
        }
    })

    return optionId
end

function Target.removePed(entity, optionId)
    return exports["ox_target"]:removeLocalEntity(entity, optionId)
end