function defaultaction(osName, actionName)
    if osName ~= nil and os.is(osName) == false then
        return
    end
    if _ACTION == nil then
        _ACTION = actionName
    end
end

