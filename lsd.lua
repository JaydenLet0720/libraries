local lsd = {}
lsd.utility = {}
lsd.visuals = {}
lsd.mouse = {}
lsd.hooks = {}
do
  function lsd.utility:LoadModule(path)
    return require(path)
  end

	function lsd.hooks:SetHook(hookname, func, hook)
			lsd.hooks[hookname] = hook

			hook = hookfunction(func, hook)
		
			return hook
	 end

	function lsd.hooks:RestoreHook(hookname)
			local hook = table.find(lsd.hooks, hookname)
			restorefunction(hook)
	end
end
