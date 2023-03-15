include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1

    
    ta_hands = {name="Adhemar Wristbands +1"}
    acc_hands = {name="Adhemar Wristbands +1"}
    wsd_hands = {name="Meg. Gloves +1",}
    crit_hands = {name="Adhemar Wristbands +1"}
    dt_hands = { name="Herculean Gloves", augments={'Accuracy+30','Damage taken-4%','STR+9','Attack+4',}}
    waltz_hands = { name="Herculean Gloves", augments={'Accuracy+22','"Waltz" potency +11%','STR+9',}}
    
    sets.weapons = {}
    sets.weapons[1] = {main="Taming Sari"}
    sets.weapons[2]={main="Twashtar"}
    sets.weapons[3]={main="Atoyac"}
    
    sets.JA = {}
--    sets.JA.Conspirator = {body="Raider's Vest +2"}
--    sets.JA.Accomplice = {head="Raider's Bonnet +2"}
--    sets.JA.Collaborator = {head="Raider's Bonnet +2"}
    sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
    sets.JA.Steal = {ammo="Barathrum",neck="Pentagalus Charm",hands="Thief's Kote",
        waist="Key Ring Belt",legs="Pillager's Culottes +1",feet="Pillager's Poulaines +1"}
    sets.JA.Flee = {feet="Pillager's Poulaines +1"}
    sets.JA.Despoil = {ammo="Barathrum",legs="Raider's Culottes +2",feet="Skulker's Poulaines"}
--    sets.JA.Mug = {head="Assassin's Bonnet +2"}
    sets.JA.Waltz = {head="Anwig Salade",
        neck="Unmoving Collar +1",
        body="Passion Jacket",
        hands=waltz_hands,
        ring1="Valseur's Ring",
        ring2="Carbuncle Ring +1",
        waist="Aristo Belt",
        legs="Desultor Tassets",
        feet="Dance Shoes"
    }
    
    sets.WS = {}
    sets.WS.SA = {}
    sets.WS.TA = {}
    sets.WS.SATA = {}
    
    sets.WS.Evisceration = {
        ammo="Yetshila +1",
        head="Adhemar Bonnet +1",
        body="Gleti's Cuirass",
        hands="Adhemar Wristbands +1",
        legs="Pillager's culottes +2",
        feet="Adhemar gamashes +1",
        neck="Light Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Odr Earring",
        left_ring="Ramuh Ring",
        right_ring="Ramuh Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
   sets.WS["Aeolian Edge"] = {
        ammo="Yetshila +1",
        head="Herculean helm",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Pillager's culottes +1",
        feet="Adhemar gamashes +1",
        neck="Light Gorget",
        waist="Eschan stone",
        left_ear="Odr earring",
        right_ear="Hecate's earring",
        left_ring="Rajas Ring",
        right_ring="Enlivened Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.WS["Rudra's Storm"] = {ammo="Yetshila +1",
        ammo="Yetshila +1",
        head="Adhemar Bonnet +1",
        body="Gleti's Cuirass",
        hands="Adhemar Wristbands +1",
        legs="Pillager's culottes +2",
        feet="Adhemar gamashes +1",
        neck="Light Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Odr Earring",
        left_ring="Ramuh Ring",
        right_ring="Ramuh Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
        
    sets.WS.SA["Rudra's Storm"] = set_combine(sets.WS["Rudra's Storm"],{ammo="Yetshila",
        head="Adhemar Bonnet +1",
        body={ name="Herculean Vest", augments={'Accuracy+21','Crit. hit damage +5%','DEX+9',}},
        }
    )
        
    sets.WS.TA["Rudra's Storm"] = set_combine(sets.WS["Rudra's Storm"],{ammo="Yetshila",
        head="Adhemar Bonnet +1",
        body={ name="Herculean Vest", augments={'Accuracy+21','Crit. hit damage +5%','DEX+9',}},
        }
    )
    
    sets.WS["Mandalic Stab"] = sets.WS["Rudra's Storm"]
        
    sets.WS.SA["Mandalic Stab"] = sets.WS.SA["Rudra's Storm"]
        
    sets.WS.TA["Mandalic Stab"] = sets.WS.TA["Rudra's Storm"]

    sets.WS.Exenterator = {ammo="Seething Bomblet +1",
        head="Meghanada Visor +1",neck="Fotia Gorget",ear1="Steelflash Earring",ear2="Bladeborn Earring",
        body="Adhemar Jacket +1",
        hands=ta_hands,
        right_ring="Ilabrat Ring",
        ring2="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Mummu Kecks +1",
        feet="Adhemar Gamashes +1"
    }
        
    TP_Set_Names = {"Low Man","Delay Cap","Evasion","TH","Acc","DT"}
    sets.TP = {}
    sets.TP['Low Man'] = {
        ammo="Ginsen",
        head="Adhemar Bonnet +1",
        body="Adhemar Jacket +1",
        hands="Adhemar wristbands +1",
        legs="Samnuha tights",
        feet="Plunderer's poulaines +1",
        neck="Asperity Necklace",
        waist="Reiki yotai",
        left_ear="Dedition Earring",
        right_ear="Skulker Earring",
        left_ring="Petrov ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
        
    sets.TP['TH'] = set_combine(sets.TP['Low Man'],{
        hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
        feet="Skulker's Poulaines",
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
        left_ring="Petrov ring",
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
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Gleti's Boots",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Defending ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    
    Idle_Set_Names = {'Normal','MDT',"STP"}
    sets.Idle = {}
    sets.Idle.Normal = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Jute Boots +1",
        neck="Asperity necklace",
        waist="Reiki yotai",
        left_ear="Dedition Earring",
        right_ear="Skulker Earring",
        left_ring="Warp ring",
        right_ring="Defending ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
                
    sets.Idle.MDT = {
        ammo="Ginsen",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Jute Boots +1",
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
        feet="Jute Boots +1",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    send_command('input /macro book 1;wait .1;input /macro set 1')
    
        
    sets.FastCast = {
        ammo="Sapience orb",
        head="Herculean helm",
        body="Gleti's Cuirass",
        hands="Gleti's Gauntlets",
        legs="Gleti's Breeches",
        feet="Jute Boots +1",
        neck="Warder's Charm",
        waist="Sailfi Belt +1",
        left_ear="Brutal Earring",
        right_ear="Allegro Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Toutatis's Cape", augments={'Accuracy+10 Attack+10','Accuracy+5','"Dbl.Atk."+10',}},
}
    
    
    sets.frenzy = {head="Frenzy Sallet"}
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
        print('putting on Frenzy sallet!')
        equip(sets.frenzy)
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