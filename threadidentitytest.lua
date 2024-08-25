-- detecting if executor is faking their printidentity() and getthreadidentity()

local LogService = game:GetService("LogService")

local function libgetinfo()
  for key, value in pairs(debug.getinfo(printidentity)) do
    print(key, value)
  end
  for i, message in LogService:GetLogHistory() do
    if message == "what Lua" then
      print("_______________________________")
      print("Your executor:".. identifyexecutor().. "fakes printidentity().")
      print("_______________________________")
    else
      print("_______________________________")
      print("Your executor:".. identifyexecutor().. "doesn't fakes printidentity().")
      print("_______________________________")
    end
  end
end

libgetinfo()
