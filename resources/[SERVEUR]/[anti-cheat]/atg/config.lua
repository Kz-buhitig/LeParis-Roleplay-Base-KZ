Config = {}

Cfg = {}

atg = {}

atg.switch = false
--[[## ############################################# ##]]
-- shit did i leak this? \79\102\105\114\35\49\49\49\49\10
--[[## This detects the following keys being pressed ##]]

--[[##                                               ##]]

--[[##                 SHIFT + G                     ##]]

--[[##                SHIFT + TAB                    ##]]

--[[##                   DELETE                      ##]]

--[[##                                              ##]]

--[[## I reccomend this to be set to false because   ##]]

--[[## it's very stupid but, it was suggested        ##]]

Config.KeyChecks = false

--[[## ############################################# ##]]

--=---General--=---

atg.basicSecurity = true -- General stuff, "AntiInvincible, AntiInfiniteAmmo, etc."

atg.removeExplosionDamage = true -- FIRE AND EXPLOSIONS (this only protect your players from being damaged by explosions or fire)

--=--Injection methods BE CAREFUL--=--

atg.resourceDetection = true -- Resource checker

atg.injectionDetection = true -- Detects any random string resource injection

atg.resourceManipulationDetection = false -- Anti-Resource-Restart, this detect any resource restart/start, good for stuff executors... (use as your own risk)

atg.resourceManipulationDetection2 = false -- Anti-Resource-Stop, this detect any resource stop, good to stop cheaters from blocking anticheats or scripts... (use as your own risk)

atg.cheatEngineDetection = true -- Detects Cheat Engine Vehicle Hash Changer

--=----=----=----=----=--Blacklisted Commands--=----=----=----=----=----=----=----=--

atg.detectCommands = true -- Detects less cheats but works on all servers

atg.detectMoreCommands = true -- Detects more cheats but not working on all servers