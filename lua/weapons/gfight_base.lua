AddCSLuaFile()

SWEP.Author = "Bleck"
SWEP.Contact = "https://steamcommunity.com/id/Blecky/"

SWEP.Slot = 1
SWEP.SlotPos = 4

SWEP.Spawnable = false

SWEP.ViewModel = Model( "models/weapons/c_arms.mdl" )
SWEP.ViewModelFOV = 54
SWEP.UseHands = true

SWEP.WorldModel = ""

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"

SWEP.DrawAmmo = false
SWEP.HitDistance = 48

function SWEP:Initialize()
    self:SetHoldType( "fist" )
end

function SWEP:SetupDataTables()
    self:NetworkVar( "Float", 0, "NextMeleeAttack" )
    self:NetworkVar( "Float", 1, "NextIdle" )
    self:NetworkVar( "Int", 2, "Combo" )
end

function SWEP:UpdateNextIdle()
end

function SWEP:PrimaryAttack( heavy )
    if heavy then
        self:HeavyAttack()
    else
        self:LightAttack()
    end
end

function SWEP:SecondaryAttack()
    self:PrimaryAttack( true )
end

function SWEP:LightAttack()
end

function SWEP:HeavyAttack()
end

function SWEP:OnDrop()
    self:Remove()
end

function SWEP:Deploy()
    if SERVER then
        self:SetCombo( 0 )
    end

    return true
end
