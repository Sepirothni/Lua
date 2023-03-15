-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------
--Ionis Zones
--Anahera Blade (4 hit): 52
--Tsurumaru (4 hit): 49
--Kogarasumaru (or generic 450 G.katana) (5 hit): 40
--Amanomurakumo/Masamune 437 (5 hit): 46
--
--Non Ionis Zones:
--Anahera Blade (4 hit): 52
--Tsurumaru (5 hit): 24
--Kogarasumaru (5 hit): 40
--Amanomurakumo/Masamune 437 (5 hit): 46
--
--Aftermath sets
-- Koga AM1/AM2 = sets.engaged.Kogarasumaru.AM
-- Koga AM3 = sets.engaged.Kogarasumaru.AM3
-- Amano AM = sets.engaged.Amanomurakumo.AM
-- Using Namas Arrow while using Amano will cancel STPAM set

-- IMPORTANT: Make sure to also get the Mote-Include.lua file (and its supplementary files) to go with this.

-- Initialization function for this job file.
function get_sets()
	-- Load and initialize the include file.
    mote_include_version = 2
	include('Mote-Include.lua')
	include('organizer-lib')
end

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    -- Options: Override default values
    state.OffenseMode:options('Normal', 'Mid', 'Acc')
    state.HybridMode:options('Normal', 'PDT')
    state.WeaponskillMode:options('Normal', 'Mid', 'Acc')
    state.IdleMode:options('Normal', 'Sphere')
    state.RestingMode:options('Normal')
    state.PhysicalDefenseMode:options('PDT', 'Reraise')
    state.MagicalDefenseMode:options('MDT')
    
    -- Additional local binds
    send_command('bind ^= gs c cycle treasuremode')
    send_command('bind ^[ input /lockstyle on')
    send_command('bind ![ input /lockstyle off')
    send_command('bind != gs c toggle CapacityMode')
    
    select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function file_unload()
    send_command('unbind ^[')
    send_command('unbind !=')
    send_command('unbind ![')
end

--[[
-- SC's
Rana > Shoha > Fudo > Kasha > Shoha > Fudo - light
Rana > Shoha > Fudo > Kasha > Rana > Fudo - dark
Kasha > Shoha > Fudo
Fudo > Kasha > Shoha > fudo
Shoha > Fudo > Kasha > Shoha > Fudo
--]]
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    Valorous = {}
    Valorous.Hands = {}
    Valorous.Hands.WS = { name="Valorous Mitts", augments={'"Occult Acumen"+4','STR+2','Weapon skill damage +6%','Accuracy+19 Attack+19','Mag. Acc.+18 "Mag.Atk.Bns."+18',}}


    Valorous.Feet = {}
    Valorous.Feet.WS ={ name="Valorous Greaves", augments={'Weapon skill damage +5%','DEX+3','Attack+12',}}
    

    sets.TreasureHunter = { 
        head="White rarab cap +1", 
        waist="Chaac Belt",
        
     }
    sets.precast.JA['Provoke'] = { 
        -- ear1="Cryptic Earring",
        head="White rarab cap +1", 
        waist="Chaac Belt",
        
    }
    
   
    -- Precast Sets
    -- Precast sets to enhance JAs
    sets.precast.JA.Meditate = {
        head="Wakido Kabuto +3",
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
    }
    sets.precast.JA.Sekkanoki = {hands="Kasuga Kote +1"}
    sets.precast.JA.Sengikori = {feet="Kas. Sune-Ate +1"}
    sets.precast.JA["Meikyo Shisui"] = {feet="Sakonji Sune-ate +1"}
	sets.precast.JA["Warding Circle"] = {head="Wakido Kabuto +2"}
	sets.precast.JA.Seigan = {head="Kasuga Kabuto +1"}
	sets.precast.JA.Hasso = {legs="Kasuga Haidate +1", feet="Wakido Sune. +3"}
    sets.precast.JA["Third Eye"] = {head="Unkai Kabuto +2", legs={ name="Sakonji Haidate +3", augments={'Enhances "Shikikoyo" effect',}}}
   
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Acro Helm", augments={'"Fast Cast"+2',}},
        ear1="Etiolation Earring",
        ear2="Loquacious Earring",
        hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+10','"Mag.Atk.Bns."+1',}},
        ring1="Lebeche Ring",
        ring2="Evanescence Ring",
		legs="Limbo Trousers",
		feet={ name="Acro Leggings", augments={'"Fast Cast"+3',}}
    }
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {}
  
    	  
       
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        ammo="Knobkierrie",
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Ishvara Earring",
        body="Sakonji Domaru +3",
        hands=Valorous.Hands.WS,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Wakido Haidate +3",
        feet=Valorous.Feet.WS
    }
    
       
    
      
    sets.precast.WS['Tachi: Fudo'] = {
        ammo="Knobkierrie",
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Ishvara Earring",
        body="Sakonji Domaru +3",
        hands=Valorous.Hands.WS,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Wakido Haidate +3",
        feet=Valorous.Feet.WS
    }   
      
    sets.precast.WS['Impulse Drive'] = {
        ammo="Knobkierrie",
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Ishvara Earring",
        body="Sakonji Domaru +3",
        hands=Valorous.Hands.WS,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Wakido Haidate +3",
        feet=Valorous.Feet.WS
    }
   
    sets.precast.WS['Tachi: Shoha'] =  {
        ammo="Knobkierrie",
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Ishvara Earring",
        body="Sakonji Domaru +3",
        hands=Valorous.Hands.WS,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Sailfi Belt +1",
        legs="Wakido Haidate +3",
        feet=Valorous.Feet.WS
    }
	
    sets.precast.WS['Stardiver'] = set_combine(sets.precast.WS['Tachi: Shoha'], {
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",        
    })
   
    sets.precast.WS['Tachi: Rana'] = {
        ammo="Knobkierrie",
        head="Mpaca's Cap",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Ishvara Earring",
        body="Sakonji Domaru +3",
        hands=Valorous.Hands.WS,
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Wakido Haidate +3",
        feet=Valorous.Feet.WS        
    }   
     
    sets.precast.WS['Tachi: Ageha'] = {
        ammo="Pemphredo Tathlum",
        head="Mpaca's Cap",
        neck="Sanctity Necklace",
        ear1="Metamorph ring +1",
        ear2="Ishvara Earring",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Eschan Stone",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
		}
    
    sets.precast.WS['Tachi: Kasha'] = set_combine(sets.precast.WS, {waist="Fotia Belt"})
    
    sets.precast.WS['Tachi: Gekko'] = set_combine(sets.precast.WS, {neck="Fotia	Gorget",waist="Fotia Belt"})
    
    sets.precast.WS['Tachi: Yukikaze'] = set_combine(sets.precast.WS, {neck="Fotia	Gorget",waist="Fotia Belt"})
    
    sets.precast.WS['Tachi: Jinpu'] = {
        ammo="Knobkierrie",
        head="Nyame Helm",
        neck="Samurai's Nodowa +2",
        ear1="Thrud Earring",
        ear2="Friomisi Earring",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        ring1="Niqmaddu Ring",
        ring2="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
        legs="Nyame Flanchard",
        feet="Mpaca's Boots",
    }
    
    sets.midcast['Blue Magic'] = set_combine(sets.precast.WS['Tachi: Ageha'], {
        ear2="Crepuscular Earring", -- 3
        waist="Eschan Stone", -- 5
        ring1="Crepuscular Ring", -- 10
        ring2="Weatherspoon Ring", -- 10 macc
        back="Aput Mantle",
    })
    -- Midcast Sets
    sets.midcast.FastRecast = {
    	-- head="Otomi Helm",
    	-- legs="Wakido Haidate +1",
        -- feet="Ejekamal Boots"
        waist="Sailfi Belt +1"
    }
    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {
        ring2="Paguroidea Ring"
    }

    sets.idle = {
	
        ammo="Ginsen",
        head="Wakido Kabuto +3",
        neck="Samurai's Nodowa +2",
        ear1="Telos Earring",
        ear2="Cessance Earring",
        body="Tatenashi haramaki +1",
        hands={ name="Tatena. Gote +1", augments={'Path: A',}},
        ring1="Niqmaddu Ring", 
        ring2="Regal Ring", 
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        waist="Sailfi Belt +1",
        legs="Tatenashi Haidate +1",
        feet="Danzo Sune-Ate",
		}
   
    sets.idle.Field = set_combine(sets.idle.Town)     
             
    sets.dt = {
		ammo="Staunch Tathlum +1",
        head={ name="Loess Barbuta +1", augments={'Path: A',}},
        neck={ name="Loricate Torque +1", augments={'Path: A',}},
        ear1={ name="Odnowa Earring +1", augments={'Path: A',}},
        ear2="Cessance Earring",
   	    body="Tartarus Platemail",
        hands="Nyame Gauntlets",       
        ring1="Defending Ring",
        ring2="Patronus Ring",
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        waist="Flume Belt +1",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
    }
    
        
    sets.Reraise = {head="Twilight Helm",body="Twilight Mail",}
    
   
    sets.engaged = {        
        ammo="Aurgelmir Orb",
        head="Wakido Kabuto +3",
        neck="Samurai's Nodowa +2",
        ear1="Telos Earring",
        ear2="Cessance Earring",
        body="Tatenashi haramaki +1",
        hands={ name="Tatena. Gote +1", augments={'Path: A',}},
        ring1="Niqmaddu Ring", 
        ring2="Regal Ring", 
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        waist="Sailfi Belt +1",
        legs="Tatenashi Haidate +1",
        feet="Tatenashi Sune-ate +1" }
      
    
   
end
   

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'WAR' then
    	set_macro_page(1, 12)
    end
end
