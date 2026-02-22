-- Remove level requirement for Apprentice Riding (spell 33388) so it can be learned at any level
UPDATE `trainer_spell` SET `ReqLevel` = 1 WHERE `SpellId` = 33388;

-- Remove level requirement from ground mount items (RequiredSkill 762 = Riding, RequiredSkillRank 75 = Apprentice)
-- so they can be used as soon as the player learns Apprentice Riding
UPDATE `item_template` SET `RequiredLevel` = 1 WHERE `RequiredSkill` = 762 AND `RequiredSkillRank` = 75 AND `RequiredLevel` <= 20;
