local folder = Instance.new("Folder")
folder.Name = "GeneratedMap"
folder.Parent = workspace

local floorY = 0
for i = 1, 10 do
	local room = Instance.new("Part")
	room.Size = Vector3.new(30, 1, 30)
	room.Position = Vector3.new(0, floorY, -35 * i)
	room.Anchored = true
	room.BrickColor = BrickColor.DarkGray()
	room.Name = "RoomFloor_" .. i
	room.Parent = folder

	local walls = {
		Vector3.new(-15, 5, room.Position.Z), -- Left
		Vector3.new(15, 5, room.Position.Z),  -- Right
	}

	for _, wallPos in ipairs(walls) do
		local wall = Instance.new("Part")
		wall.Size = Vector3.new(1, 10, 30)
		wall.Position = wallPos
		wall.Anchored = true
		wall.BrickColor = BrickColor.Black()
		wall.Parent = folder
	end
end
