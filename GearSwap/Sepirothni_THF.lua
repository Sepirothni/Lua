include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1

    
    ta_hands = {name="Adhemar Wristbands +1"}
    acc_hands = {name="Adhemar Wristbands +1"}
    wsd_hands = {name="Meg. Gloves +1",}
    crit_hands = {name="Adhemar Wristbands +1"}
    dt_hands = { name="Herculean Gloves", augments={'Accuracy+30','Damage taken-4%','STR+9','Attack+4',}}
    
    sets.weapons = {}
    sets.weapons[1] = {main="/"}
    sets.weapons[2]={main="Twashtar"}
    sets.weapons[3]={main="Atoyac"}
    
    sets.JA = {}
--    sets.JA.Conspirator = {body="Raider's Vest +2"}
--    sets.JA.Accomplice = {head="Raider's Bonnet +2"}
--    sets.JA.Collaborator = {head="Raider's Bonnet +2"}
    sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
    
	sets.JA.Waltz = {
        neck="Phalaina Locket",
        ring1="Asklepian Ring",
        waist="Chuq'aba Belt"
    }
    
    sets.WS = {}
    sets.WS.SA = {}
    sets.WS.TA = {}
    sets.WS.SATA = {}
    
    sets.WS.Evisceration = {
        ammo="Ginsen",
        head="Theia's Hairpin +1",
        hands="Meg. Gloves +1",
        neck="Breeze Gorget",
        waist="Caudata Belt",
        left_ear="Telos earring",
        right_ear="Sherida Earring",
        left_ring="Rajas Ring",
        right_ring="Chirich Ring",
        back="Vespid Mantle"
    }

    sets.WS.Exenterator = {
		ammo="Ginsen",
        head="Theia's Hairpin +1",
        hands="Meg. Gloves +1",
        neck="Breeze Gorget",
        waist="Caudata Belt",
        left_ear="Telos earring",
        right_ear="Sherida Earring",
        left_ring="Rajas Ring",
        right_ring="Chirich Ring",
        back="Vespid Mantle"
    }
        
    TP_Set_Names = {"Low Man","Delay Cap","Evasion","TH","Acc","DT"}
    
	sets.TP = {}
    
	sets.TP['Low Man'] = {
		ammo="Ginsen",
		head={ name="Pursuer's Beret", augments={'DEX+7','AGI+10','"Recycle"+15',}},
		body="Pillager's Vest +2",
		hands="Adhemar Wrist. +1",
		legs="Sombra Tights",
		feet="Skulk. Poulaines",
		neck="Anu Torque",
		waist="Reiki Yotai",
		left_ear="Sherida Earring",
		right_ear="Dedition earring",
		left_ring="Chirich Ring",
		right_ring="Rajas Ring",
		back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','"Dbl.Atk."+6',}},
	}
        
    sets.TP['TH'] = set_combine(sets.TP['Low Man'],{
		ammo="Per. Lucky Egg",
		hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
    })
        
    sets.TP['Acc'] = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Gleti's Boots",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    
	sets.TP['Delay Cap'] = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Gleti's Boots",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
        
    sets.TP.Evasion = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Gleti's Boots",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
                
    sets.TP.DT = {
        ammo="Ginsen",
		head="Skormoth Mask",
		body="Pillager's Vest +2",
		hands="Meg. Gloves +1",
		legs="Turms Subligar",
		feet={ name="Plun. Poulaines +1", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck="Twilight Torque",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Moonbeam Ring",
		right_ring="Warden's Ring",
		back="Moonbeam Cape",
	}
    
    Idle_Set_Names = {'Normal','MDT',"STP"}
    
	sets.Idle = {}
    
	sets.Idle.Normal = {
        ammo="Ginsen",
		head="Skormoth Mask",
		body="Pillager's Vest +2",
		hands="Adhemar Wrist. +1",
		legs="Turms Subligar",
		feet={ name="Plun. Poulaines +1", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck={ name="Asn. Gorget +1", augments={'Path: A',}},
		waist="Reiki yotai",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Rajas Ring",
		right_ring="Chirich Ring",
		back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','"Dbl.Atk."+6',}},
}
                
    sets.Idle.MDT = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Jute Boots",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    
    sets.Idle['STP'] = {
        
        
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet={ name="Plun. Poulaines +1", augments={'Enhances "Assassin\'s Charge" effect',}},
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    
	--send_command('input /macro book 1;wait .1;input /macro set 2')
    
    sets.FastCast = {}
end

function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.type=="WeaponSkill" then
        if sets.WS[spell.english] then equip(sets.WS[spell.english]) end
        if buffactive['sneak attack'] and buffactive['trick attack'] and sets.WS.SATA[spell.english] then equip(sets.WS.SATA[spell.english])
        elseif buffactive['sneak attack'] and sets.WS.SA[spell.english] then equip(sets.WS.SA[spell.english])
        elseif buffactive['trick attack'] and sets.WS.TA[spell.english] then equip(sets.WS.TA[spell.english]) end
    elseif string.find(spell.english,'Waltz') then
        equip(sets.JA.Waltz)
    elseif spell.action_type == "Magic" then
        equip(sets.FastCast)
    end
end

function aftercast(spell)
    if player.status=='Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    else
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
    if buff=="Sneak Attack" then
        soloSA = gain_or_loss
    elseif buff=="Trick Attack" then
        soloTA = gain_or_loss
    elseif gain_or_loss and buff == 'Sleep' and player.hp > 99 then
        --print('putting on Frenzy sallet!')
        --equip(sets.frenzy)
    end
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