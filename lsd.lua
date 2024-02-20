local lsd = {}
lsd.utility = {}
lsd.visuals = {}
lsd.mouse = {}

do
  function lsd.mouse:GetClosestPlayer(mouseloc)
    local closest = nil
    local mousepos = mouseloc
    local plr = nil

    for index, player in pairs(Players:GetPlayers()) do
      local pos = Workspace.CurrentCamera:WorldToViewportPoint(player.Character:FindFirstChild("Head").Position)
      if closest == nil then
        current = (Vector2.new(pos.X, pos.Y) - mousepos).Magnitude
        plr = player
      else
        local new = (Vector2.new(pos.X, pos.Y) - mousepos).Magnitude
        if new < closest then
          plr = player
          closest = new
        end
      end
    end

    return plr, closest
  end
end
