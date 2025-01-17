--Helicopter
  --AH1Z
ResourceManager:RegisterInstanceLoadHandler(Guid("643135EA-6CA7-11DF-B6FA-F715AA601362"), Guid("A676D498-A524-42AD-BE78-72B071D8CD6A"), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[26].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(27)

	print("added  AH1Z IR field connection")
end)

  --mi-28
ResourceManager:RegisterInstanceLoadHandler(Guid("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE"), Guid("89BEA1D6-2FF4-11DE-8C23-DAB1D69416DE"), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[28].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(27)
	print("added Mi-28 IR field connection")
end)


--Tank

  --M1A2（Luckily, the thermal imaging capabilities of the main driver, co-pilot, and spotter were retained.）
ResourceManager:RegisterInstanceLoadHandler(Guid('B069BA89-EECF-11DD-8117-9421284A74E5'), Guid('B06A08AB-EECF-11DD-8117-9421284A74E5'), function(instance)
	local partition = instance.partition

	local gunnerCameraComponent = CameraComponentData(partition:FindInstance(Guid('B06A0927-EECF-11DD-8117-9421284A74E5')))
	local or4Entity = Or4EntityData(partition:FindInstance(Guid('F5B1BC1A-FF52-44A4-A584-1541B8385239')))

	local cameraActiveConnection = PropertyConnection()
	cameraActiveConnection.source = gunnerCameraComponent
	cameraActiveConnection.sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	cameraActiveConnection.target = or4Entity
	cameraActiveConnection.targetFieldId = MathUtils:FNVHash('In3')

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(cameraActiveConnection)

	print('M1A2 FLIR Connect')
end)

  --T90（Only the primary and co-pilot views were retained at the expense of the observer's thermal imaging view.）
ResourceManager:RegisterInstanceLoadHandler(Guid('60106974-DD7D-11DD-A030-B04E425BA11E'), Guid('60106975-DD7D-11DD-A030-B04E425BA11E'), function(instance)
	local partition = instance.partition

	local gunnerCameraComponent = CameraComponentData(partition:FindInstance(Guid('385933AF-90C4-4C7A-95AB-A62B4F43C57C')))
	local orEntity = OrEntityData(partition:FindInstance(Guid('D7DCB6B8-75A7-4788-8CDD-0F4BA341E06F')))

	local cameraActiveConnection = PropertyConnection()
	cameraActiveConnection.source = gunnerCameraComponent
	cameraActiveConnection.sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	cameraActiveConnection.target = orEntity
	cameraActiveConnection.targetFieldId = MathUtils:FNVHash('In2')

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(cameraActiveConnection)

	print('T90 FLIR Connect')
end)



--IFV
  --LAV-25
ResourceManager:RegisterInstanceLoadHandler(Guid('D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5'), Guid('ADF563C9-28B1-C42B-993E-B2FD40F36078'), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[74].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	--Elimination of thermal imaging view without zoomed field of view for the main driver
	vehicleBlueprint.propertyConnections[76].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(77)

	print('LAV-25 FLIR Connect')
end)

  --LAV-25 XP5
ResourceManager:RegisterInstanceLoadHandler(Guid('B791D5BE-5010-49EF-895D-677F5DCE16CB'), Guid('4092E519-1C9F-4243-88AE-E27F4F663E34'), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[74].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	--Elimination of thermal imaging view without zoomed field of view for the main driver
	vehicleBlueprint.propertyConnections[76].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut') --In1
	vehicleBlueprint.propertyConnections:erase(77)  --In2

	print('LAV-25 XP5 FLIR Connect')
end)


  --BMP-2M
ResourceManager:RegisterInstanceLoadHandler(Guid('AAE95906-AFD4-11DD-84FB-9FA71F68ED5E'), Guid('AAE95907-AFD4-11DD-84FB-9FA71F68ED5E'), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[34].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	--Elimination of thermal imaging view without zoomed field of view for the main driver
	vehicleBlueprint.propertyConnections[33].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(32)

	print('BMP-2 FLIR Connect')
end)

  --BMP-2M XP5
ResourceManager:RegisterInstanceLoadHandler(Guid('DD6BCB51-A4FA-4743-910E-E7B953834089'), Guid('086AFD23-5DD9-430F-9430-B1DAA502DB0F'), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[34].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	--Elimination of thermal imaging view without zoomed field of view for the main driver
	vehicleBlueprint.propertyConnections[33].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(32)

	print('BMP-2  XP5 FLIR Connect')
end)

  --BTR-90
ResourceManager:RegisterInstanceLoadHandler(Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'), Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'), function(instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	--Elimination of the co-pilot having a thermal imaging view without zooming the field of view
	vehicleBlueprint.propertyConnections[72].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	--Elimination of thermal imaging view without zoomed field of view for the main driver
	vehicleBlueprint.propertyConnections[70].sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	vehicleBlueprint.propertyConnections:erase(71)

	print('BTR-90 FLIR Connect')
end)


-- These vehicles all use the same existing logic to toggle zoom level.
-- This logic blueprint is "Vehicles/common/LogicalPrefabs/Tank1pFX"
-- The behaviour can be changed from zoom to FLIR by modifying the connection that toggles the view change
local zoomVehicleConfigs = {
   --AC130
   ['AC130 Tank'] = { partition = Guid("DE5A1D34-981C-11E1-B304-EDC7D93268C6"), instance =  Guid("561E82B1-FDB8-CE19-B9B5-79CB5B57E94F"), index = 8 },
   ['AC130 25MM'] = { partition = Guid("DE5A1D34-981C-11E1-B304-EDC7D93268C6"), instance =  Guid("561E82B1-FDB8-CE19-B9B5-79CB5B57E94F"), index = 21 },
   --C-RAM AA
   ['C-RAM'] = { partition = Guid("5114C378-874C-4883-90B7-8F2EDC0D97FC"), instance =  Guid("19B63F53-5FD5-4A82-9EF8-B43A2243E9D9"), index = 3 },
   ['Centurion_C-RAM_Carrier'] = { partition = Guid("CBBF50EA-33A3-11E0-990F-8A81B775F8D1"), instance =  Guid("D35CA587-79AF-D351-6F65-967794C7F1B7"), index = 3 },
   --Pantsir AA
   ['Pantsir'] = { partition = Guid("16DB88EB-7E17-11E0-8BC2-FE5C7E48AEB1"), instance =  Guid("C645317B-45BB-E082-7E5C-918388C22D59"), index = 4 },
}

function ModifyZoomVehicle(index, instance)
	local vehicleBlueprint = VehicleBlueprint(instance)
    vehicleBlueprint:MakeWritable()
    -- The Tank1pFX logic has an input that handles zoom changes (-28879722)
    -- and also one that handles toggling FLIR (-1110218184)
    vehicleBlueprint.propertyConnections[index].targetFieldId = -1110218184
    print('Modified zoom connection to FLIR')
end

for id, config in pairs(zoomVehicleConfigs) do
	ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, config.index, ModifyZoomVehicle)
end




--Atkhel driver thermal link
local AtkHelFLIRConfigs = {
	['AH1Z'] = {
	partition = Guid('643135EA-6CA7-11DF-B6FA-F715AA601362'),
	instance = Guid('A676D498-A524-42AD-BE78-72B071D8CD6A'),
	pilots = Guid('1E2267C5-2D64-4BCC-BC17-F72D645E73CF'),
	veLogics = Guid('4AC24D90-17A0-4ABD-91D1-D4A774A78EC3'),
	or4Entitys = Guid('6534817C-AB07-4C6B-99A8-B32D010D1FEA'),},
	['MI-28'] = {
	partition = Guid('89BE53B6-2FF4-11DE-8C23-DAB1D69416DE'),
	instance = Guid('89BEA1D6-2FF4-11DE-8C23-DAB1D69416DE'),
	pilots = Guid('89BEA214-2FF4-11DE-8C23-DAB1D69416DE'),
	veLogics = Guid('9F7088CC-14EA-4CF9-BD04-10FDFC73DFBE'),
	or4Entitys = Guid('037EFC46-CA45-4810-A0E7-C06CAB267EDF'),},
}
function ModifyAtkHelFLIR(config,instance)
	local partition = instance.partition

    local pilotCameraComponent = CameraComponentData(partition:FindInstance(config.pilots))
    local veLogic = LogicReferenceObjectData(partition:FindInstance(config.veLogics))
	local or4Entity = Or4EntityData(partition:FindInstance(config.or4Entitys))

	local flirEnabledConnection = PropertyConnection()
	flirEnabledConnection.source = or4Entity
	flirEnabledConnection.target = veLogic
	flirEnabledConnection.sourceFieldId = MathUtils:FNVHash('Out')
	flirEnabledConnection.targetFieldId = -1110218184

	local cameraActiveConnection = PropertyConnection()
	cameraActiveConnection.source = pilotCameraComponent
	cameraActiveConnection.target = or4Entity
	cameraActiveConnection.sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	cameraActiveConnection.target = or4Entity
	cameraActiveConnection.targetFieldId = MathUtils:FNVHash('In3')

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(flirEnabledConnection)
	vehicleBlueprint.propertyConnections:add(cameraActiveConnection)

	print('Connect AtkHel to FLIR')
end

for id, config in pairs(AtkHelFLIRConfigs) do
    ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, function(instance)
        ModifyAtkHelFLIR(config, instance)
    end)
end



--Thermal imaging connection of IFV
local IFVFLIRConfigs = {
	['LAV-25'] =
	{ partition = Guid('D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5'),
	instance = Guid('ADF563C9-28B1-C42B-993E-B2FD40F36078'),
	veLogics = Guid('8FD24769-8DBE-48FF-8D92-422BCFDE0DFD'),
	or4Entitys = Guid('C5737996-3367-40C5-8C64-7329365EDC64'),},
	['LAV-25 XP5'] =
	{ partition = Guid('B791D5BE-5010-49EF-895D-677F5DCE16CB'),
	instance = Guid('4092E519-1C9F-4243-88AE-E27F4F663E34'),
	veLogics = Guid('BE3D12E4-0CF5-4903-978D-91C7B9ED37A1'),
	or4Entitys = Guid('3265D675-678A-4CD5-996F-E99851D7F920'),},
	['BMP-2M'] =
	{ partition = Guid('AAE95906-AFD4-11DD-84FB-9FA71F68ED5E'),
	instance = Guid('AAE95907-AFD4-11DD-84FB-9FA71F68ED5E'),
	veLogics = Guid('5F84C947-1992-41DA-9379-F82F2C09D52C'),
	or4Entitys = Guid('53CE3157-7CAB-46C6-BBF7-92F22D1953EE'),},
	['BMP-2M XP5'] =
	{ partition = Guid('DD6BCB51-A4FA-4743-910E-E7B953834089'),
	instance = Guid('086AFD23-5DD9-430F-9430-B1DAA502DB0F'),
	veLogics = Guid('907D4BED-9924-4C1B-87A9-E3B63E9734C3'),
	or4Entitys = Guid('746AE8F3-CEBC-48BC-9401-97BE1F51B43B'),},
	['BTR-90'] =
	{ partition = Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'),
	instance = Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'),
	veLogics = Guid('79BAB44B-2185-47DB-80EF-56F3474C53D7'),
	or4Entitys = Guid('FB53917B-1DB4-474E-B7FE-80DDB35305C6'),},
}
function ModifyIFVFLIR(config,instance)
	local partition = instance.partition
	local veLogic = LogicReferenceObjectData(partition:FindInstance(config.veLogics))
	local or4Entity = Or4EntityData(partition:FindInstance(config.or4Entitys))

	local flirEnabledConnection = PropertyConnection()
	flirEnabledConnection.source = or4Entity
	flirEnabledConnection.sourceFieldId = MathUtils:FNVHash('Out')
	flirEnabledConnection.target = veLogic
	flirEnabledConnection.targetFieldId = -1110218184

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(flirEnabledConnection)

	print('Connect IFV to FLIR')
end

for id, config in pairs(IFVFLIRConfigs) do
    ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, function(instance)
        ModifyIFVFLIR(config, instance)
    end)
end




local FLIRConnectionConfigs = {
	--scout helicopter（The main driver clicks the right mouse button to open the thermal imaging view, but the co-pilot's observational thermal imaging function is destroyed）
    ['AH6'] = {
        partition = Guid('FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32'),
        instance = Guid('FD8AB748-FF4D-11DD-A7B1-F7C6DEEC9D32'),
        pilots = Guid('15AB2B38-FF4E-11DD-A7B1-F7C6DEEC9D32'),
        veLogics = Guid('A6B73A14-22C6-4127-88ED-BAE67E045F40'),
    },
    ['Z11-W'] = {
        partition = Guid('D78088E5-38B7-11DE-BF1C-984D9AEE762C'),
        instance = Guid('D780AFF6-38B7-11DE-BF1C-984D9AEE762C'),
        pilots = Guid('D780B025-38B7-11DE-BF1C-984D9AEE762C'),
        veLogics = Guid('20438013-5978-4BD9-A244-E0C742834B1C'),
    },
	--Co-pilot thermal imaging capability for some ground vehicles.
    ['AAV-7V1'] = {
        partition = Guid('F0530CEB-5F63-11E0-858A-FC3FD696384C'),
        instance = Guid('1E8653E6-11A0-DF93-C808-E48351D2F578'),
        pilots = Guid('EC478588-8869-4E6B-BC54-209AFDB118B6'),
        veLogics = Guid('AD374D48-B29E-4F2E-B80C-F8E8E0FDBD40'),
    },
	--M1114
    ['Humvee'] = {
        partition = Guid('611F48A3-0919-11E0-985D-C512734E48AF'),
        instance = Guid('D1B516CA-6119-F025-C923-1B0700B6AEBA'),
        pilots = Guid('77BDC1CD-5426-4629-BAB7-EC4755146E13'),
        veLogics = Guid('FC1BED82-3985-4C2F-85C0-1AE487B01BD5'),
    },
    --GAZ-3937
    ['GAZ-3937'] = {
        partition = Guid('B9E8F531-DF6E-4221-BD32-A8D15CB2E8C8'),
        instance = Guid('98E5B9BF-0B68-4AF0-A20D-1A23D6B6BF8B'),
        pilots = Guid('F44EB7BA-155F-4026-BEF8-3240D1486D98'),
        veLogics = Guid('15D78034-0943-4F8E-867A-6A51580DD83B'),
    },
    --M142 Himars（Note that the 3X field of view must be selected in the customization screen to use the thermal imaging feature）
    ['M142'] = {
        partition = Guid('ECE82307-9454-11E1-9418-9BD47D974A22'),
        instance = Guid('04331C0E-9651-8073-E772-2010E5ACF88D'),
        pilots = Guid('7E1EC83F-A480-416A-BC9F-C72A0092BACE'),
        veLogics = Guid('8E9B1B5D-3001-4797-9A4C-03BB81B3BDE9'),
    },
	--BM-23（Note that the 3X field of view must be selected in the customization screen to use the thermal imaging feature）
    ['BM-23'] = {
        partition = Guid('65CE090F-3CFC-11E1-BDB2-A81058AAD7AA'),
        instance = Guid('C3F3DE57-2E0F-F4BD-0C18-B95E7C5E0515'),
        pilots = Guid('9FBF3AB2-9C7E-431C-990D-AD3ED23D9A54'),
        veLogics = Guid('37DB7035-D1EF-433C-9B52-7333CE1A0171'),
    },
	--RHINO(VanModified)XP4
    ['RHINO'] = {
        partition = Guid('193D1786-EC47-11E1-891F-82DA7A0DD2F4'),
        instance = Guid('AEA24188-AF40-499C-AAA6-A8BB3E85EFEE'),
        pilots = Guid('E3D9BA86-0E02-44EC-A58B-00D1D00CBB97'),
        veLogics = Guid('5B087E25-22C4-4389-AD99-29893A180F31'),
    },
}
function ModifyFLIRConnection(config, instance)
    local partition = instance.partition
    local pilotCameraComponent = CameraComponentData(partition:FindInstance(config.pilots))
    local veLogic = LogicReferenceObjectData(partition:FindInstance(config.veLogics))

	local flirEnabledConnection = PropertyConnection()
	flirEnabledConnection.source = pilotCameraComponent
	flirEnabledConnection.sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
	flirEnabledConnection.target = veLogic
	flirEnabledConnection.targetFieldId = -1110218184

	local cameraActiveConnection = PropertyConnection()
	cameraActiveConnection.source = pilotCameraComponent
	cameraActiveConnection.sourceFieldId = MathUtils:FNVHash('ActiveForLocalPlayer')
	cameraActiveConnection.target = veLogic
	cameraActiveConnection.targetFieldId = MathUtils:FNVHash('CameraActive')

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(flirEnabledConnection)
	vehicleBlueprint.propertyConnections:add(cameraActiveConnection)

    print('Connect Some Vehicles to FLIR')
end

for id, config in pairs(FLIRConnectionConfigs) do
    ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, function(instance)
        ModifyFLIRConnection(config, instance)
    end)
end




--Gadgets Thermal
local GadgetsFLIRConfigs = {
	['EOD'] = {
	partition = Guid('269BB4A2-0DC3-11E0-B817-B1885439A6BF'),
	instance = Guid('6CA1F97D-5E4F-D411-DDC2-974E1E2133A5'),
	pilots = Guid('A2F7EC6F-2230-491A-BC0F-91050CA270EA'),
	veLogics = Guid('A458A861-977E-4724-9929-FC3A71C41DDF'),},
	['SOFLAM'] = {
	partition = Guid('7432AA7D-1802-11E0-8BA5-9B1E2E41035E'),
	instance = Guid('2A644984-ADB6-AD04-0534-C11BB4BEB91D'),
	pilots = Guid('F2AEEB2C-F478-433A-9AFD-7B0BEA507981'),
	veLogics = Guid('9C36D419-3CCB-4725-8CFB-EF5B352ECC9F'),},
}
function ModifyGadgetsFLIR(config,instance)
	local partition = instance.partition
	local pilotCameraComponent = CameraComponentData(partition:FindInstance(config.pilots))
	local veLogic = LogicReferenceObjectData(partition:FindInstance(config.veLogics))

	local flirEnabledConnection = PropertyConnection()
	flirEnabledConnection.source = pilotCameraComponent
	flirEnabledConnection.sourceFieldId = MathUtils:FNVHash('ActiveForLocalPlayer')
	flirEnabledConnection.target = veLogic
	flirEnabledConnection.targetFieldId = -1110218184

	local vehicleBlueprint = VehicleBlueprint(instance)
	vehicleBlueprint:MakeWritable()
	vehicleBlueprint.propertyConnections:add(flirEnabledConnection)
	print('Connect Gadgets to FLIR')
end

for id, config in pairs(GadgetsFLIRConfigs) do
    ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, function(instance)
        ModifyGadgetsFLIR(config, instance)
    end)
end

--The following segments are the co-pilot's view with the camera on and the UI adjustments, the default 3x field of view has now been adjusted to 1x for various considerations.
local NoZoomVehicleConfigs = {
	['M1A2'] = { partition = Guid("B069BA89-EECF-11DD-8117-9421284A74E5"),instance = Guid("B06A096D-EECF-11DD-8117-9421284A74E5"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['T90'] = { partition = Guid("60106974-DD7D-11DD-A030-B04E425BA11E"),instance = Guid("6BA00DB1-C4E1-4598-AD56-84CFBDC55FE6"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['LAV-25'] = { partition = Guid("D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5"),instance = Guid("A99CF3B4-F605-421C-9371-E9DD925BD862"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['LAV-25 XP5'] = { partition = Guid("B791D5BE-5010-49EF-895D-677F5DCE16CB"),instance = Guid("1F77DA90-7FE4-4D9F-9ED1-FEBFEBB53452"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['BMP-2M'] = { partition = Guid("AAE95906-AFD4-11DD-84FB-9FA71F68ED5E"),instance = Guid("42A07684-EA97-4B74-B45E-579346B1C404"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['BMP-2M XP5'] = { partition = Guid("DD6BCB51-A4FA-4743-910E-E7B953834089"),instance = Guid("1493B7B8-1EF6-49ED-930C-18398794A54C"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['BTR-90'] = { partition = Guid("22CFC313-4DD1-49E6-B45F-A8B1194105C5"),instance = Guid("9BC3FD4A-EA7F-4661-B5B5-15933654E675"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['AAV-7V1'] = { partition = Guid("F0530CEB-5F63-11E0-858A-FC3FD696384C"),instance = Guid("5F22F8A9-F01F-40D4-9709-79BEE9D9C12E"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['Humvee'] = { partition = Guid("611F48A3-0919-11E0-985D-C512734E48AF"),instance = Guid("D23478FF-8893-465C-9899-BE3EBDA7D8DD"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['GAZ-3937'] = { partition = Guid("B9E8F531-DF6E-4221-BD32-A8D15CB2E8C8"),instance = Guid("D42C2061-7F3A-4068-9D40-A4AD649DAFCB"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['RHINO'] = { partition = Guid("193D1786-EC47-11E1-891F-82DA7A0DD2F4"),instance = Guid("E699ACAF-7BCD-4295-A2CE-ADB5B6AE8953"), meshOffsetz = 0.3700000047683716},--0.9779999852180481
	['M142'] = { partition = Guid("ECE82307-9454-11E1-9418-9BD47D974A22"),instance = Guid("3D3AF465-6068-497F-A3C6-45FAA8032428"), meshOffsetz = 0.4000000059604645 },-- 1.0579999685287476
	['BM-23'] = { partition = Guid("65CE090F-3CFC-11E1-BDB2-A81058AAD7AA"),instance = Guid("AEC2F1C1-FD1B-4732-93FE-99D31B32936B"), meshOffsetz = 0.4000000059604645},-- 1.0579999685287476
	['Humvee-ASRAD'] = {partition = Guid('F7C250D2-ECEB-481F-A130-D91FE8B693E0'), instance = Guid('CCC67712-B0D7-419E-B3E4-0D179EC33A88'), meshOffsetz = 0.3700000047683716}, --0.9779999852180481
    ['VodnikPhoenix'] = {partition = Guid('4DBB5F24-30D5-4CF1-819B-D6E95561D62F'), instance = Guid('D02D64FA-17D1-45A2-A85F-3F3C7F3147F1'), meshOffsetz = 0.3700000047683716}, --0.9779999852180481
}
function ModifyNoZoomVehicle(meshOffsetz,instance)
	local alternateCameraViewData = AlternateCameraViewData(instance)
    alternateCameraViewData:MakeWritable()
    alternateCameraViewData.fieldOfView = 50 -- 20 Co-pilot zoomed view
    alternateCameraViewData.meshOffset.z = meshOffsetz -- 0.9779999852180481 UI size
    print('meshOffsetz')
end

for id, config in pairs(NoZoomVehicleConfigs) do
    ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, function(instance)
        ModifyNoZoomVehicle(config.meshOffsetz, instance)
    end)
end




--Helicopter and jet fixed view
local StaticCameraZoomConfigs = {
	['AH1Z'] = { partition = Guid("643135EA-6CA7-11DF-B6FA-F715AA601362"),instance = Guid("549AF5DF-BB5F-4B89-9EF7-79FD8B772F78"),},
	['AH6'] = { partition = Guid("FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32"),instance = Guid("15AB2B39-FF4E-11DD-A7B1-F7C6DEEC9D32"),},
	['MI-28'] = { partition = Guid("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE"),instance = Guid("89BEA215-2FF4-11DE-8C23-DAB1D69416DE"),},
	['Z11-W'] = { partition = Guid("D78088E5-38B7-11DE-BF1C-984D9AEE762C"),instance = Guid("D780B026-38B7-11DE-BF1C-984D9AEE762C"),},
    ['F18'] = { partition = Guid('3EABB4EF-4003-11E0-8ACA-C41D37DB421C'),instance = Guid('52DEEDD5-CB0C-4AF3-BC7E-284C8D3C78CB'),},
    ['F18-Air'] = { partition = Guid('99E0A725-E473-4A6C-8421-087F390AABFB'),instance = Guid('429CE50C-EE84-44A6-BCB4-4FD749D30C9F'),},
	['SU35'] = { partition = Guid('76806015-4BE2-11E0-B502-9B84AFF94A89'),instance = Guid('D0A5725B-0C0B-4D24-AB2E-A4ECFA47E096'),},
    ['SU35-Air'] = { partition = Guid('D8A0ED02-46B9-4AE1-8262-2C24995AAED0'),instance = Guid('55D8EB48-0205-4BA5-B788-8D60E67E7BC4'),},
    ['A10'] = { partition = Guid('D07E3830-85FD-4C0E-819E-23640D2B2ECB'), instance = Guid('D1BF601E-DD88-483C-AFF4-39D3C4450A09'),},
    ['SU-25'] = { partition = Guid('08D7A80F-BCB4-44FA-8DDF-AE65F096046D'),instance = Guid('439CD68E-DB87-4430-BA6C-8E030594492D'),},
}
function ModifyStaticCameraZoom(instance)
	local pilotCameraData = StaticCameraData(instance)
	pilotCameraData:MakeWritable()
	-- Remove freelook from alternate view
	pilotCameraData.yawSensitivityZoomed = 0
	pilotCameraData.pitchSensitivityZoomed = 0
    print('Modified StaticCamera to FLIR')
end

for id, config in pairs(StaticCameraZoomConfigs) do
	ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, ModifyStaticCameraZoom)
end

local PilotAlternateViewZoomConfigs = {
	['AH1Z'] = { partition = Guid("643135EA-6CA7-11DF-B6FA-F715AA601362"),instance = Guid("0EA2D80E-9561-4F2C-8E66-D710C56DA24B"),},
	['AH6'] = { partition = Guid("FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32"),instance = Guid("15AB2B3A-FF4E-11DD-A7B1-F7C6DEEC9D32"),},
	['MI-28'] = { partition = Guid("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE"),instance = Guid("89BEA243-2FF4-11DE-8C23-DAB1D69416DE"),},
	['Z11-W'] = { partition = Guid("D78088E5-38B7-11DE-BF1C-984D9AEE762C"),instance = Guid("D780B027-38B7-11DE-BF1C-984D9AEE762C"),},
    ['F18'] = { partition = Guid('3EABB4EF-4003-11E0-8ACA-C41D37DB421C'),instance = Guid('86D8EACB-8637-4BFB-AD0D-9A905DDF812A'),},
    ['F18-Air'] = { partition = Guid('99E0A725-E473-4A6C-8421-087F390AABFB'),instance = Guid('536B72DD-58EB-474D-B973-B183B2FFC34B'),},
	['SU35'] = { partition = Guid('76806015-4BE2-11E0-B502-9B84AFF94A89'),instance = Guid('1B7C8CCB-1536-42ED-A469-47239C04CA6E'),},
    ['SU35-Air'] = { partition = Guid('D8A0ED02-46B9-4AE1-8262-2C24995AAED0'),instance = Guid('C573B049-1A5F-4422-8C39-11C08DE6FEC3'),},
    ['A10'] = { partition = Guid('D07E3830-85FD-4C0E-819E-23640D2B2ECB'), instance = Guid('012E8729-5030-4AA7-8ACA-B694D8438E18'),},
    ['SU-25'] = { partition = Guid('08D7A80F-BCB4-44FA-8DDF-AE65F096046D'),instance = Guid('29CDFDAA-14E0-40A5-B247-036BF7E6D170'),},
}
function ModifyPilotAlternateViewZoom(instance)
	local pilotAlternateView = AlternateCameraViewData(instance)
	pilotAlternateView:MakeWritable()
    -- Enable toggle behaviour between views
	pilotAlternateView.toggleViewChange = true
    --Remove input restriction from alternate view
	pilotAlternateView.inputSuppression.suppressVehicleInput:clear()
    print('Modified PilotAlternateView to FLIR')
end

for id, config in pairs(PilotAlternateViewZoomConfigs) do
	ResourceManager:RegisterInstanceLoadHandler(config.partition, config.instance, ModifyPilotAlternateViewZoom)
end


--Jet and XP5 AA Thermal
local JetFlirGuids = {
    ['F18'] = {
        partition = Guid('3EABB4EF-4003-11E0-8ACA-C41D37DB421C'),
        camera = Guid('D7A2D4BF-994B-43E7-AC1B-BBAD5F0C619F'),
    },
    ['F18-Air'] = {
        partition = Guid('99E0A725-E473-4A6C-8421-087F390AABFB'),
        camera = Guid('B6FFB14E-A0A2-4BCB-9608-AAA54BA0480D'),
    },
    ['SU35'] = {
        partition = Guid('76806015-4BE2-11E0-B502-9B84AFF94A89'),
        camera = Guid('42ECE6D2-B656-4A8B-805E-FE54B5D8639D'),
    },
    ['SU35-Air'] = {
        partition = Guid('D8A0ED02-46B9-4AE1-8262-2C24995AAED0'),
        camera = Guid('5DF3CB95-6BDE-425C-A649-4EE7A643BB19'),
    },
    ['A10'] = {
        partition = Guid('D07E3830-85FD-4C0E-819E-23640D2B2ECB'),
        camera = Guid('FF2FD7A9-7981-463A-B0F9-EE368853AA4D'),
    },
    ['SU-25'] = {
        partition = Guid('08D7A80F-BCB4-44FA-8DDF-AE65F096046D'),
        camera = Guid('F06A05AC-3D4B-4A26-8581-60E065CBEE70'),
    },
	['Humvee-ASRAD'] = {
        partition = Guid('F7C250D2-ECEB-481F-A130-D91FE8B693E0'),
        camera = Guid('FB50FF37-1CFC-466A-9F67-3ADDEF07EAE3'),
    },
	['VodnikPhoenix'] = {
		partition = Guid('4DBB5F24-30D5-4CF1-819B-D6E95561D62F'),
		camera = Guid('E890BD38-607D-4176-BDD2-6AA8443C1688'),
    },

}

Events:Subscribe('Level:RegisterEntityResources', function()
	for id, guids in pairs(JetFlirGuids) do
        ModifyJetFLIR(guids, id)
    end
end)

function ModifyJetFLIR(guids, id)
    local partition = ResourceManager:FindDatabasePartition(guids.partition)
    if partition == nil then
        -- Partition not found, current map does not have this vehicle
        return
    end

    -- Get the relevant instances for modification
    local vehicleBlueprint = VehicleBlueprint(partition.primaryInstance)
    vehicleBlueprint:MakeWritable()
    local vehicleEntity = VehicleEntityData(vehicleBlueprint.object)
    vehicleEntity:MakeWritable()

    -- Add the Tank1pFX logic blueprint to the vehicle
    local logicBlueprint = LogicPrefabBlueprint(ResourceManager:SearchForDataContainer('Vehicles/common/LogicalPrefabs/Tank1pFX'))
    local logicReferenceObject = LogicReferenceObjectData()
    logicReferenceObject.blueprint = logicBlueprint 
    vehicleEntity.components:add(logicReferenceObject)

    -- Get the pilot's 1st person camera component
    local cameraComponent = partition:FindInstance(guids.camera)

    -- Tell the logic blueprint when the pilot camera is active
    local camerActiveConnection = PropertyConnection()
    camerActiveConnection.source = cameraComponent
    camerActiveConnection.sourceFieldId = MathUtils:FNVHash('ActiveForLocalPlayer')
    camerActiveConnection.target = logicReferenceObject
    camerActiveConnection.targetFieldId = MathUtils:FNVHash('CameraActive')
    vehicleBlueprint.propertyConnections:add(camerActiveConnection)

    -- Tell the logic blueprint when alternate view (= right click view) is active
    local flirEnabledConnection = PropertyConnection()
    flirEnabledConnection.source = cameraComponent
    flirEnabledConnection.sourceFieldId = MathUtils:FNVHash('AlternateViewEnabledOut')
    flirEnabledConnection.target = logicReferenceObject
    flirEnabledConnection.targetFieldId = -1110218184 -- Input event that triggers the FLIR VisualEnvironment
    vehicleBlueprint.propertyConnections:add(flirEnabledConnection)

    print('Added FLIR to ' .. id)
end


--[[Events:Subscribe('Level:LoadResources', function()
	ResourceManager:MountSuperBundle('xp3chunks')
	ResourceManager:MountSuperBundle('levels/xp3_alborz/xp3_alborz')
end)]]

--[[Hooks:Install('ResourceManager:LoadBundles', 100, function(hook, bundles, compartment)
    if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
        print('Injecting bundles.')

        bundles = {
        'levels/xp3_alborz/xp3_alborz',
        'levels/xp3_alborz/rushlarge0',
		bundles[1],
        }

        hook:Pass(bundles, compartment)
    end
end)
Events:Subscribe('Level:RegisterEntityResources', function(levelData)
	local Registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('6C72B9D2-484E-A4D0-94FA-8A8D39357040'))) 
    ResourceManager:AddRegistry(Registry, ResourceCompartment.ResourceCompartment_Game)
end)]]

--Open Air Superiority
--[[Events:Subscribe('Level:LoadResources', function()
	ResourceManager:MountSuperBundle('xp3chunks')
	ResourceManager:MountSuperBundle('levels/xp3_alborz/xp3_alborz')
end)

Hooks:Install('ResourceManager:LoadBundles', 100, function(hook, bundles, compartment)
    if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
        print('Injecting bundles.')

        bundles = {
        'levels/xp3_alborz/xp3_alborz',
        'levels/xp3_alborz/rushlarge0',
		bundles[1],
        }

        hook:Pass(bundles, compartment)
    end
end)
Events:Subscribe('Level:RegisterEntityResources', function(levelData)
	local Registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('6C72B9D2-484E-A4D0-94FA-8A8D39357040'))) 
    ResourceManager:AddRegistry(Registry, ResourceCompartment.ResourceCompartment_Game)
end)]]
