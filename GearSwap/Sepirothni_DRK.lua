include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1
    
    sets.weapons = {}
    sets.weapons[1]={main="Caladbolg"}
    sets.weapons[2]={main="Apocalypse"}
    sets.weapons[3]={main="Ragnarok"}
    
    sets.JA = {}
--    sets.JA.Conspirator = {body="Raider's Vest +2"}
--    sets.JA.Accomplice = {head="Raider's Bonnet +2"}
--    sets.JA.Collaborator = {head="Raider's Bonnet +2"}
--    sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
    
	sets.JA.Waltz = {
        neck="Phalaina Locket",
        ring1="Asklepian Ring",
        waist="Chuq'aba Belt"
    }
    
    sets.WS = {}
    
	-- Great Sword Weapon Skills
	
    sets.WS.Resolution = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }

    sets.WS.Torcleaver = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS.Freezebite = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS.Frostbite = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS.Shockwave = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS["Herculean Slash"] = {
		ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Ground Strike"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Spinning Slash"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",		
	}
	
	sets.WS["Sickle Moon"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",		
	}
    
	-- Scythe Weapon Skills

	sets.WS.Entropy = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle", 
    }
	
	sets.WS.Insurgency = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS.Catastrophe = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS.Guillotine = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
    }
	
	sets.WS["Infernal Scythe"] = {
		ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Spiral Hell"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Cross Reaper"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Vorpal Scythe"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Spinning Scythe"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Nightmare Scythe"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Shadow of Death"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}
	
	sets.WS["Dark Harvest"] = {
        ammo="Ginsen",
		head="Mekira-oto",
		body="Rheic Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Shadow Gorget",
		waist="Caudata Belt",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Vespid Mantle",
	}

    
    TP_Set_Names = {"Low Man","DT"}
    
	sets.TP = {}
    
	sets.TP['Low Man'] = {
		ammo="Ginsen",
		head="Sulevia's Mask +1",
		body="Odyss. Chestplate",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Nefarious Collar +1",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Flamma Ring",
		right_ring="Chirich Ring",
		back="Atheling Mantle",
	}
                
    sets.TP.DT = {
		ammo="Ginsen",
		head="Sulevia's Mask +1",
		body="Odyss. Chestplate",
		hands="Flam. Manopolas +1",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +1",
		neck="Twilight Torque",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Moonbeam Ring",
		right_ring="Sulevia's Ring",
		back="Moonbeam Cape",
	}
    
    Idle_Set_Names = {'Normal'}
    
	sets.Idle = {}
    
	sets.Idle.Normal = {
		ammo="Ginsen",
		head="Sulevia's Mask +1",
		body="Odyss. Chestplate",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs",
		feet="Flam. Gambieras +1",
		neck="Nefarious Collar +1",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Lugra Earring",
		left_ring="Flamma Ring",
		right_ring="Chirich Ring",
		back="Atheling Mantle",
	}
  
	--send_command('input /macro book 1;wait .1;input /macro set 2')
    
    sets.FastCast = {}
end

function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.type=="WeaponSkill" then
        if sets.WS[spell.english] then equip(sets.WS[spell.english]) end
        --if buffactive['sneak attack'] and buffactive['trick attack'] and sets.WS.SATA[spell.english] then equip(sets.WS.SATA[spell.english])
        --elseif buffactive['sneak attack'] and sets.WS.SA[spell.english] then equip(sets.WS.SA[spell.english])
       --elseif buffactive['trick attack'] and sets.WS.TA[spell.english] then equip(sets.WS.TA[spell.english]) end
    elseif string.find(spell.english,'Waltz') then
        equip(sets.JA.Waltz)
    elseif spell.action_type == "Magic" then
        equip(sets.FastCast)
    end
end

function aftercast(spell)
    if player.status=='Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    else[]
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif new == 'Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    end
end

function buff_change(buff,gain_or_loss)
    
end

function self_command(command)
    if command == 'toggle TP set' then
        TP_Index = TP_Index +1
        if TP_Index > #TP_Set_Names then TP_Index = 1 end
        send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
        equip(sets.TP[TP_Set_Names[TP_Index]])
    elseif command == 'toggle Idle set' then
        Idle_Index = Idle_Index +1
        if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end