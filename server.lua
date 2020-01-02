RegisterCommand('rename',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasGroup(user_id, "group") then
        local idjogador = vRP.prompt(source, "Qual id do jogador?", "")
        local nome = vRP.prompt(source, "Novo nome", "")
        local firstname = vRP.prompt(source, "Novo sobrenome", "")
        local idade = vRP.prompt(source, "Nova idade", "")

        if idjogador and nome and firstname and idade then
            TriggerEvent('b2k-character:updateName',idjogador,nome,firstname,idade)
        end
    end
end)
