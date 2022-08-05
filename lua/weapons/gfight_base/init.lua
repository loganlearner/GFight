AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" )

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

function SWEP:LightAttack()
    -- STUFF
end

function SWEP:HeavyAttack()
    -- STUFF
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
