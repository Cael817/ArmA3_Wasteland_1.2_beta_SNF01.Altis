//Not used right now, just saving the code

	// Y key, //Cael817, possibly add temporary quadbike, from Munch
	case (_key == 21):
    {
    	if (dialog) exitwith { closeDialog 0; }; // Check a current dialog is not already active.
        if(vehicle player != player) exitwith{};  // Check the player is not a car.
        
        _pos = getPos player;
		_dir = getdir player;
		_pos = [(_pos select 0) + 4 * sin (_dir), (_pos select 1) + 4 * cos (_dir), 0];
		_legit = player getVariable "tempVehiclespawn";
		if(_legit == 1) then {
			player setVariable ["tempVehicleSpawn", 0, true];
			_vehicle = createVehicle ["C_Quadbike_01_F",_pos, [], 0, "CAN_COLLIDE"];
			//_vehicle setVariable ["CanSell",0, true];  // Re add variable so the vehicle isn't sellable later
			_vehicle setVariable ["R3F_LOG_disabled", true, true];
			clearMagazineCargoGlobal _vehicle;
			clearWeaponCargoGlobal _vehicle;
			clearItemCargoGlobal _vehicle; 
			_vehicle spawn tempVehicleTimer;  // countdown timer for vehicle life
			_text = "You have spawned a temporary Quadbike which will exist for 10 minutes. Use the time wisely";
        } else {
			_text = "You already used a vehicle this life.";
		};
		[_text, 5] call mf_notify_client;

    };