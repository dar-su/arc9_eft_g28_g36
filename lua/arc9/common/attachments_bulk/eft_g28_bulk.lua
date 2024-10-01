local ATT = {}

///////////////////////////////////////      eft_g28_barrel_std


ATT = {}

ATT.PrintName = "HK417 7.62x51 16.5 inch barrel"
ATT.CompactName = "HK417 16\""
ATT.Icon = Material("entities/eft_g28_attachments/br.png", "mips smooth")
ATT.Description = [[A 16.5 inch (421mm) barrel for HK417-based weapons for 7.62x51 ammo.]]

ATT.HasBarrel = true 

ATT.EFTErgoAdd = -13
ATT.CustomCons = { Ergonomics = "-13" }
ATT.RecoilMult = 0.94
ATT.VisualRecoilMult = 0.94
-- ATT.PhysBulletMuzzleVelocityMult = 0.952
ATT.HeatCapacityMult = 1.07
ATT.Spread = 1.13 * ARC9.MOAToAcc

-- ATT.ActivateElements = {"barrel_406mm"}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_barrel"}
ATT.Attachments = {
    {
        PrintName = "Gas block",
        Category = "eft_g28_gas",
        -- Pos = Vector(-9.705, 0, 0.12),
        Pos = Vector(-9.25, 0, 0.12),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        Category = {"eft_g28_muzzle", "eft_ar10_muzzle"},
        Pos = Vector(-16.21, 0, 0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_barrel_std")

///////////////////////////////////////      eft_g28_upper_std

ATT = {}

ATT.PrintName = "HK G28 7.62x51 upper receiver"
ATT.CompactName = "G28"
ATT.Icon = Material("entities/eft_g28_attachments/r.png", "mips smooth")
ATT.Description = [[An upper receiver for the G28 marksman rifle manufactured by Heckler & Koch. Equipped with a top mount for attaching additional devices.]]

ATT.HasReceiver = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
-- ATT.RecoilMult = 0.98
-- ATT.VisualRecoilMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_upper"}

ATT.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_g28_barrel",
        Pos = Vector(-2.5, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_g28_hg",
        Pos = Vector(-2.295, 0, -0.16),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 4, 0),
    },
    {
        PrintName = "Rear Sight",
        Category = {"eft_ar_rearsight", "eft_rearsight", "eft_rearsight_hk416"},
        Pos = Vector(3.9, 0, -1.65),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_optic_large"},
        ExcludeElements = {"IronsBlockingSight"},
        Pos = Vector(1, 0, -1.65),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_upper_std")


///////////////////////////////////////      eft_g28_mag_10


ATT = {}

ATT.PrintName = "HK417/G28 7.62x51 10-round magazine"
ATT.CompactName = "G28 10"
ATT.Icon = Material("entities/eft_g28_attachments/10.png", "mips smooth")
ATT.Description = [[A 10-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_mag"}
ATT.ActivateElements = {"g28_10rnd"}

ATT.ClipSize = 10
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_10.mdl"
-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_10.mdl"

ATT.DrawFunc = function(swep, model) model:SetSkin(swep:GetElements()["eft_g28_blk"] and 1 or 0) end

ATT.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "patron_in_mag4",
    [7] = "patron_in_mag5",
    [8] = "patron_in_mag6",
    [9] = "patron_in_mag7",
    [10] = "patron_in_mag8",
    [11] = "patron_in_mag9",
}

ATT.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "magspring_start2",
        "magspring_end2",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_mag_10")

///////////////////////////////////////      eft_g28_mag_10old


ATT = {}

ATT.PrintName = "HK417/G28 7.62x51 10-round magazine (Non-transparent)"
ATT.CompactName = "G28 10 orig."
ATT.Icon = Material("entities/eft_g28_attachments/10.png", "mips smooth")
ATT.Description = [[A 10-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.

original nontransparent version like in tarkov]]

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_mag"}
ATT.ActivateElements = {"g28_10rnd"}

ATT.ClipSize = 10
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_10.mdl"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_10.mdl"

ATT.DrawFunc = function(swep, model) model:SetSkin(swep:GetElements()["eft_g28_blk"] and 1 or 0) end

ARC9.LoadAttachment(ATT, "eft_g28_mag_10old")

///////////////////////////////////////      eft_g28_mag_20


ATT = {}

ATT.PrintName = "HK417/G28 7.62x51 20-round magazine"
ATT.CompactName = "G28 20"
ATT.Icon = Material("entities/eft_g28_attachments/20.png", "mips smooth")
ATT.Description = [[A 20-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.]]

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.92

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_mag"}
ATT.ActivateElements = {"g28_20rnd"}

ATT.ClipSize = 20
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_20.mdl"
-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_20.mdl"

ATT.DrawFunc = function(swep, model) model:SetSkin(swep:GetElements()["eft_g28_blk"] and 1 or 0) end

ATT.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "patron_in_mag4",
    [7] = "patron_in_mag5",
    [8] = "patron_in_mag6",
    [9] = "patron_in_mag7",
    [10] = "patron_in_mag8",
    [11] = "patron_in_mag9",
    [12] = "patron_in_mag10",
    [13] = "patron_in_mag11",
    [14] = "patron_in_mag12",
    [15] = "patron_in_mag13",
    [16] = "patron_in_mag14",
    [17] = "patron_in_mag15",
    [18] = "patron_in_mag16",
    [19] = "patron_in_mag17",
    [20] = "patron_in_mag18",
    [21] = "patron_in_mag19",
}

ATT.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "magspring_start",
        "magspring_end",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
        "patron_in_mag17",
        "patron_in_mag18",
        "patron_in_mag19",
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_mag_20")

///////////////////////////////////////      eft_g28_mag_20old


ATT = {}

ATT.PrintName = "HK417/G28 7.62x51 20-round magazine (Non-transparent)"
ATT.CompactName = "G28 20 orig."
ATT.Icon = Material("entities/eft_g28_attachments/20.png", "mips smooth")
ATT.Description = [[A 20-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.

original nontransparent version like in tarkov]]

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.92

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_mag"}
ATT.ActivateElements = {"g28_20rnd"}

ATT.ClipSize = 20
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_20.mdl"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_hk_417_20.mdl"

ATT.DrawFunc = function(swep, model) model:SetSkin(swep:GetElements()["eft_g28_blk"] and 1 or 0) end

ARC9.LoadAttachment(ATT, "eft_g28_mag_20old")


///////////////////////////////////////      eft_g28_gas_std


ATT = {}

ATT.PrintName = "HK417 low profile gas block"
ATT.CompactName = "HK417"
ATT.Icon = Material("entities/eft_g28_attachments/g.png", "mips smooth")
ATT.Description = [[A standard gas block for HK417 assault rifles and compatibles, manufactured by Heckler & Koch.]]

ATT.HasGas = true

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.HeatCapacityMult = 0.995
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_gas"}

ARC9.LoadAttachment(ATT, "eft_g28_gas_std")

///////////////////////////////////////      eft_g28_charge_std

ATT = {}

ATT.PrintName = "HK417 E1 extended charging handle"
ATT.CompactName = "HK417"
ATT.Icon = Material("entities/eft_g28_attachments/c.png", "mips smooth")
ATT.Description = [[An extended charging handle for HK417 and compatible systems, manufactured by Heckler & Koch.]]

ATT.HasCharge = true 

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g28_charge"}

ARC9.LoadAttachment(ATT, "eft_g28_charge_std")

///////////////////////////////////////      eft_g28_buffer_std


ATT = {}

ATT.PrintName = "HK G28 buffer tube"
ATT.CompactName = "G28"
ATT.Description = [[A receiver extension buffer tube for installation of Mil-Spec buttstocks, fits both HK417 and G28.]]
ATT.Icon = Material("entities/eft_g28_attachments/b.png", "mips smooth")

ATT.HasBufferTube = true

ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.SortOrder = 0
ATT.Category = "eft_g28_buffertube"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        -- Category = {"eft_ar_stock", "eft_g28_stock"},
        Category = "eft_g28_stock",
        Pos = Vector(4, 0, 0.8),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_g28_buffer_std")

///////////////////////////////////////      eft_g28_hg_ext

ATT = {}

ATT.PrintName = "HK417 Extended Free Float handguard with flip-up front sight"
ATT.CompactName = "HK417 Ext"
ATT.Icon = Material("entities/eft_g28_attachments/hgext.png", "mips smooth")
ATT.Description = [[The HK417 & G28 Extended DMR Forearm With a Flip Up Front Sight & Suppressor Window Cutout. Optimized design to mitigate the heat emissions for long range shooting and to prevent the mirage effect.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_416_hk_quad_rail_extended.mdl"
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.985
ATT.Category = {"eft_g28_hg"}

-- ATT.ExcludeElements = {"barrel_11i", "barrel_145i", "barrel_165i"}

-- ATT.ExcludeElements = {"barrel_260mm","barrel_370mm","barrel_406mm", "eft_gas_ar15_rg", "eft_gas_ar15_jp", "eft_gas_ar15_m4fs"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small", "eft_foregrip_large"},
        Pos = Vector(0, 4.4, 1.37),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    }, 
    {
        PrintName = "Backup",
        Category = {"eft_backupmount"},
        Pos = Vector(0, 1.9, -1.52),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_tactical_top_big"},
        Pos = Vector(0, 10.2, -1.52),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(1.15, 12-3.1, 0.1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(-1.15, 12-3.1, 0.1),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical", "eft_tactical_top", "eft_bipod"},
        Pos = Vector(0, 9.5, 1.37),
        Ang = Angle(0, -90, 180),
        -- Icon_Offset = Vector(0, 0, -1),
    }, 
}

ARC9.LoadAttachment(ATT, "eft_g28_hg_ext")

///////////////////////////////////////      eft_g28_hg_std

ATT = {}

ATT.PrintName = "HK417 Patrol handguard with flip-up front sight"
ATT.CompactName = "HK417"
ATT.Icon = Material("entities/eft_g28_attachments/hg.png", "mips smooth")
ATT.Description = [[The HK417 & G28 DMR Forearm With a Flip Up Front Sight & Suppressor Window Cutout. Optimized design to mitigate the heat emissions for long range shooting and to prevent the mirage effect.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_416_hk_quad_rail_extended.mdl"
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
-- ATT.RecoilMult = 0.97
-- ATT.VisualRecoilMult = 0.97
-- ATT.HeatCapacityMult = 0.985
ATT.Category = {"eft_g28_hg"}

-- ATT.ExcludeElements = {"barrel_11i", "barrel_145i", "barrel_165i"}

-- ATT.ExcludeElements = {"barrel_260mm","barrel_370mm","barrel_406mm", "eft_gas_ar15_rg", "eft_gas_ar15_jp", "eft_gas_ar15_m4fs"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small", "eft_foregrip_large"},
        Pos = Vector(0, 4.4, 1.37),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    }, 
    {
        PrintName = "Backup",
        Category = {"eft_backupmount"},
        Pos = Vector(0, 1.9, -1.52),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(1.15, 12-3.1, 0.1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(-1.15, 12-3.1, 0.1),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    -- {
    --     PrintName = "Tactical",
    --     Category = {"eft_tactical", "eft_tactical_top", "eft_bipod"},
    --     Pos = Vector(0, 9, 1.37),
    --     Ang = Angle(0, -90, 180),
    --     -- Icon_Offset = Vector(0, 0, -1),
    -- }, 
}

ARC9.LoadAttachment(ATT, "eft_g28_hg_std")

///////////////////////////////////////      eft_g28_stock_e2


ATT = {}

ATT.PrintName = "HK417 E2 buttstock"
ATT.CompactName = "HK417 E2"
ATT.Description = [[The E2 telescopic stock is designed as a replacement for standard HK417 stocks. Made of high-grade nylon fiber with a twist-off rubber butt pad and an ambidextrous sling attachment point. Can be installed on HK417/G28 weapon system buffer tubes. Manufactured by Heckler & Koch.]]
ATT.Icon = Material("entities/eft_g28_attachments/e2.png", "mips smooth")

ATT.HasStock = true

ATT.RecoilMult = 0.77
ATT.VisualRecoilMult = 0.77

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_g28_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_g28_stock_e2")

///////////////////////////////////////      eft_g28_stock_adj


ATT = {}

ATT.PrintName = "HK417 Adjustable Buttstock"
ATT.CompactName = "HK417 Adj."
ATT.Description = [[An adjustable stock designed and manufactured by Heckler & Koch. This stock is fully adjustable for length of pull as well as the cheek height. Features a mount for installation of a cheek rest.]]
ATT.Icon = Material("entities/eft_g28_attachments/a.png", "mips smooth")

ATT.HasStock = true

ATT.RecoilMult = 0.77
ATT.VisualRecoilMult = 0.77

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.Category = "eft_g28_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Cheek",
        Category = "eft_g28_cheek",
        Pos = Vector(4.2, 0, 1.12),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_stock_adj")

///////////////////////////////////////      eft_g28_stock_cheek


ATT = {}

ATT.PrintName = "HK Adjustable Buttstock cheek rest"
ATT.CompactName = "HK cheek"
ATT.Description = [[The HK adjustable stock cheek piece provides optimum versatility in use.]]
ATT.Icon = Material("entities/eft_g28_attachments/ch.png", "mips smooth")

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.Category = "eft_g28_cheek"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_g28_stock_cheek")

///////////////////////////////////////      eft_g28_muzzle_std

ATT = {}

ATT.PrintName = "HK Prolonged 7.62x51 flash hider"
ATT.CompactName = "HK Prolonged"
ATT.Icon = Material("entities/eft_g28_attachments/mz.png", "mips smooth")
ATT.Description = [[The Heckler & Koch "Prolonged" 7.62x51 flash hider. Effectively suppresses flash and can also serve as a platform for the B&T QD sound suppressor.]]
ATT.SortOrder = -2
ATT.MenuCategory = "ARC9 - EFT Attachments"

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_g28_kac_qdc_muzzle_brake_kit_762x51.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.02

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_g28_silencer",
        Pos = Vector(-0.35, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ATT.Category = {"eft_g28_muzzle"}

ARC9.LoadAttachment(ATT, "eft_g28_muzzle_std")

///////////////////////////////////////      eft_g28_silencer_std

ATT = {}

ATT.PrintName = "HK G28 B&T QD 7.62x51 sound suppressor"
ATT.CompactName = "B&T QD"
ATT.Icon = Material("entities/eft_g28_attachments/s.png", "mips smooth")
ATT.Description = [[A quick-detach 7.62x51 silencer manufactured by Brugger & Thomet. Installed on the HK Prolonged flash hider.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleEffectQCA = 5
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 6
ATT.EFTErgoAdd = -18
ATT.CustomCons = { Ergonomics = "-18" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.SpreadMult = 0.98
ATT.HeatCapacityMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 1.01

ATT.Category = {"eft_g28_silencer"}

ARC9.LoadAttachment(ATT, "eft_g28_silencer_std")


///////////////////////////////////////      eft_g28_blk


ATT = {}

ATT.PrintName = "G28 Full Black"
ATT.CompactName = "Black"
ATT.Icon = Material("entities/eft_g28_attachments/blk.png", "mips smooth")
ATT.Description = [[Black color instead of FDE for the HK G28.

Not presents in EFT, custom att.]]

ATT.DropMagazineSkin = 1

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_g28"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_g28"},
    },
}

ARC9.LoadAttachment(ATT, "eft_g28_blk")