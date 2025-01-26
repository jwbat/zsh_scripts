
```lua
local function callback_one()
    print("Callback one executed")
end

local function callback_two()
    print("Callback two executed")
end

-- Master callback that calls other functions
local function master_callback()
    callback_one()
    callback_two()
    cmd("Refresh") -- Call Refresh explicitly if needed
end

-- Autocommand that triggers the master callback
au("BufWinEnter", {
    group = api.nvim_create_augroup("AutoRefresh", { clear = true }),
    pattern = "*",
    callback = master_callback,
})
```
