-- Event notes hooks
function onEvent(name, value1, value2)
    local var string = (value1)
    local var length = tonumber(0 + value2)
    if name == "Lyrics Opp Side" then

        makeLuaText('yappin', 'Lyrics go here!', 1250, 0, 500)
        setTextString('yappin',  '' .. string)
        setTextFont('yappin', 'vcr.ttf')
        setTextColor('yappin', '0xffffff')
        setTextSize('yappin', 40);
        addLuaText('yappin')
        setTextAlignment('yappin', 'center')
        setObjectCamera("yappin", 'hud');
        runTimer('lyricalTho', length, 1)
        --removeLuaText('yappin', true)
        
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalTho' then
        removeLuaText('yappin', true)
    end
end