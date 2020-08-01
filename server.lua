RegisterCommand('rename',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "chat.permissao") or vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mindmaster.permissao") then
        local idjogador = vRP.prompt(source, "Qual id do jogador?", "")
        local nome = vRP.prompt(source, "Novo nome", "")
        local firstname = vRP.prompt(source, "Novo sobrenome", "")
        local idade = vRP.prompt(source, "Nova idade", "")
        local identity = vRP.getUserIdentity(parseInt(user_id))
        vRP.execute("vRP/update_user_identity",{
            user_id = idjogador,
            firstname = firstname,
            name = nome,
            age = idade,
            registration = identity.registration,
            phone = identity.phone
        })
    end
end)
