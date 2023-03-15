-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- IMPORTANT: Make sure to also get the Mote-Include.lua file to go with this.

-- Initialization function for this job file.
function get_sets()
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.
function job_setup()
    state.Buff.Sentinel = buffactive.sentinel or false
    state.Buff.Cover = buffactive.cover or false
    state.Buff.Doomed = buffactive.doomed or false
end


-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    -- Options: Override default values
    options.OffenseModes = {'Normal', 'Acc'}
    options.DefenseModes = {'Normal', 'Shield', 'MP'}
    options.WeaponskillModes = {'Normal', 'Acc'}
    options.CastingModes = {'Normal'}
    options.IdleModes = {'Normal'}
    options.RestingModes = {'Normal'}
    options.PhysicalDefenseModes = {'PDT', 'Shield', 'HP'}
    options.MagicalDefenseModes = {'MDT'}

    options.HybridDefenseModes = {'None', 'Repulse', 'Reraise', 'RepulseReraise'}

    state.Defense.PhysicalMode = 'PDT'
    state.HybridDefenseMode = 'None'

	send_command('bind !f11 gs c cycle HybridDefenseMode')

    
end


-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Precast sets
	--------------------------------------
    
    -- Precast sets to enhance JAs
    sets.precast.JA['Invincible'] = {legs="Cab. Breeches +1"}
    sets.precast.JA['Holy Circle'] = {feet="Rev. Leggings +2"}
    sets.precast.JA['Shield Bash'] = {hands="Cab. Gauntlets +1", ear1="Knightly Earring"}
    sets.precast.JA['Sentinel'] = {feet="Cab. Leggings +1"}
    sets.precast.JA['Rampart'] = {head="Cab. Coronet +1"}
    sets.precast.JA['Fealty'] = {body="Cab. Surcoat +1"}
    sets.precast.JA['Divine Emblem'] = {feet="Chevalier's Sabatons +1"}
    sets.precast.JA['Cover'] = {head="Reverence Coronet +2", body="Cab. Surcoat +1"}
	sets.precast.JA['Chivalry'] = {hands="Cab. Gauntlets +1"}
	sets.precast.JA['Provoke'] = {
		ammo="Sapience Orb",
        head={ name="Loess Barbuta +1", augments={'Path: A',}},
		neck="Knight's bead necklace +1",
        body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Eschite Greaves", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
		ring1="Apeile Ring",
		ring2="Apeile Ring +1",
        back={ name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Enmity+10','Damage taken-5%',}},
		waist="Creed Baudrier",
		ear1="Friomisi Earring",
		ear2="Cryptic Earring"
	}

    sets.precast.FC = {
        ammo="Staunch Tathlum +1",
        head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Yorium Cuirass", augments={'Spell interruption rate down -9%',}},
		hands="Regal Gauntlets",
		legs={ name="Founder's Hose", augments={'MND+3','Mag. Acc.+3','Attack+7','Breath dmg. taken -1%',}},
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+3','AGI+8','"Mag.Atk.Bns."+9',}},
        right_ear="Loquacious Earring",
		left_ear="Knightly Earring",
        ring1="Kishar Ring",
		ring2="Evanescence Ring",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		back={ name="Rudianos's Mantle", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
        
    }

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC)

    sets.precast.FC.Cure = set_combine(sets.precast.FC)

       
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
		neck="Fotia Gorget",
		ear1="Thrud Earring",
		left_ear="Ishvara Earring",
        body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		ring1="Regal Ring",
		ring2="K'ayres Ring",
        back={ name="Rudianos's Mantle", augments={'MND+20','Accuracy+20 Attack+20','Weapon skill damage +10%','"Regen"+5',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS)

    sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Red Lotus Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Burning Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Flat Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Savage Blade'] = {
		ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
		neck="Fotia Gorget",
		ear1="Thrud Earring",
		left_ear="Ishvara Earring",
        body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		ring1="Regal Ring",
		ring2="K'ayres Ring",
        back={ name="Rudianos's Mantle", augments={'MND+20','Accuracy+20 Attack+20','Weapon skill damage +10%','"Regen"+5',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		}
	
	sets.precast.WS['Atonement'] = {
		ammo="Sapience Orb",
        head={ name="Loess Barbuta +1", augments={'Path: A',}},
		neck="Moonbeam Necklace",
        body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		ring1="Apeile Ring",
		ring2="Apeile Ring +1",
        back={ name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Enmity+10','Damage taken-5%',}},
		waist="Creed Baudrier",
		ear1="Friomisi Earring",
		ear2="Cryptic Earring"		
	}
	
	sets.precast.WS['Circle Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Vorpal Blade'] = set_combine(sets.precast.WS)
	
	sets.precast.WS['Knights of Round'] = {
		ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
		neck="Fotia Gorget",
		ear1="Thrud Earring",
		left_ear="Ishvara Earring",
        body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		ring1="Regal Ring",
		ring2="K'ayres Ring",
        back={ name="Rudianos's Mantle", augments={'MND+20','Accuracy+20 Attack+20','Weapon skill damage +10%','"Regen"+5',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		}
	
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS)
        
    
    
	--------------------------------------
	-- Midcast sets
	--------------------------------------

         
    sets.Enmity = 
		{
		ammo="Sapience Orb",
        head={ name="Loess Barbuta +1", augments={'Path: A',}},
		neck="Moonbeam Necklace",
        body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		ring1="Apeile Ring",
		ring2="Apeile Ring +1",
        back={ name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Enmity+10','Damage taken-5%',}},
		waist="Creed Baudrier",
		ear1="Friomisi Earring",
		ear2="Cryptic Earring"
	}

    sets.midcast.Flash = set_combine(sets.midcast.Enmity, {legs="Enif Cosciales"})
    
    sets.midcast.Stun = sets.midcast.Flash
    
    sets.midcast.Cure = {
        ammo="Sapience Orb",
        head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        neck="Diemer Gorget",
        ear1="Nourish. Earring",
		ear2="Nourish. Earring +1",
        body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        ring1="Kishar Ring",
		ring2="Lebeche Ring",
        back={ name="Rudianos's Mantle", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
        waist="Gishdubar Sash",
        legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}
    }

    sets.midcast.Phalanx = {
        ammo="Staunch Tathlum +1",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Shab. Cuirass +1",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Melic torque",
        ear1="Andoaa Earring",
        ear2="Augment. Earring",
        back={ name="Weard Mantle", augments={'VIT+4','DEX+2','Enmity+4','Phalanx +2',}},
        waist="Olympus Sash",
    }

    sets.midcast['Enhancing Magic'] = {neck="Colossus's Torque",waist="Olympus Sash",legs="Reverence Breeches +2"}
    
    sets.midcast.Protect = {ring1="Sheltered Ring"}
    sets.midcast.Shell = {ring1="Sheltered Ring"}
    
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.Reraise = {head="Twilight Helm", body="Twilight Mail"}
    
    sets.resting = {
		head="Twilight Helm",
		neck="Creed Collar",
        body="Twilight Mail",
		ring1="Sheltered Ring",
		ring2="Paguroidea Ring",
        waist="Austerity Belt"
	}
    

    -- Idle sets
    sets.idle = {
		ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		ear1="Thureous Earring",
		ear2={ name="Odnowa Earring +1", augments={'Path: A',}},
        body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		ring1="Moonbeam Ring",
		ring2="Moonbeam Ring",
        back={ name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Enmity+10','Damage taken-5%',}},
		waist="Flume Belt +1",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Sakpata's Leggings"	
	}   
   	
	--------------------------------------
	-- Engaged sets
	--------------------------------------
    
    sets.engaged = {
		ammo="Staunch Tathlum +1",
        head="Sakpata's Helm",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		ear1="Thureous Earring",
		ear2={ name="Odnowa Earring +1", augments={'Path: A',}},
        body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		ring1="Moonbeam Ring",
		ring2="Moonbeam Ring",
        back={ name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Enmity+10','Damage taken-5%',}},
		waist="Flume Belt +1",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		
		}

	--------------------------------------
	-- Custom buff sets
	--------------------------------------

	sets.buff.Doomed = {ring2="Saida Ring"}
    sets.buff.Cover = {head="Reverence Coronet +2", body="Caballarius Surcoat +1"}
end

--------------------------------------
---------                    ---------
------                          ------
---         Start of Rules         ---
------                          ------
---------                    ---------
-------------------------------------- 

----------------------------------------------
--   Macro and Style Change on Job Change   --
----------------------------------------------
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))
end

function set_style(sheet)
    send_command('@input ;wait 5.0;input /lockstyleset '..sheet)
	add_to_chat (56, 'Your lockstyle looks like shit, and you should feel bad.')
	add_to_chat (55, 'You are on '..('PLD '):color(5)..''..('btw. '):color(55)..''..('Macros set!'):color(121))
	add_to_chat (23, '"If you are going to LOLPLD, then do it spectacularly"')
	send_command('@input ;wait 180;input //gs validate')
end

--Page, Book--/
set_macros(1,13)
--Use the Lockstyle Number-- 
set_style(25) 

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    -- Don't gearswap for weaponskills when Defense is on.
    if spell.type == 'WeaponSkill' and state.Defense.Active then
        eventArgs.handled = true
    end

	if state.Buff[spell.english] ~= nil then
		state.Buff[spell.english] = true
	end
end

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_post_precast(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)

end

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
	if state.Buff[spell.english] ~= nil then
		state.Buff[spell.english] = not spell.interrupted or buffactive[spell.english]
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Customization hooks for idle and melee sets, after they've been automatically constructed.
-------------------------------------------------------------------------------------------------------------------

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
	if player.mpp < 51 then
	    idleSet = set_combine(idleSet, sets.latent_refresh)
	end
	
	return idleSet
end

-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
    if state.Buff.Doomed then
        meleeSet = set_combine(meleeSet, sets.Buff.Doomed)
    end
    return meleeSet
end

-------------------------------------------------------------------------------------------------------------------
-- General hooks for change events.
-------------------------------------------------------------------------------------------------------------------

-- Called when the player's status changes.
function job_state_change(field, new_value, old_value)
    if field == 'HybridDefenseMode' then
        classes.CustomDefenseGroups:clear()
        classes.CustomDefenseGroups:append(new_value)
    end
end


-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
	if state.Buff[buff] ~= nil then
		state.Buff[buff] = gain
	end
end


-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    update_defense_mode()
end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function update_defense_mode()
    if player.equipment.main == 'Kheshig Blade' and not classes.CustomDefenseGroups:contains('Kheshig Blade') then
        classes.CustomDefenseGroups:append('Kheshig Blade')
    end
    
    if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
        if player.equipment.sub and not player.equipment.sub:endswith('Shield') and
           player.equipment.sub ~= 'Aegis' and player.equipment.sub ~= 'Ochain' then
            state.CombatForm = 'DW'
        else
            state.CombatForm = nil
        end
    end
end


