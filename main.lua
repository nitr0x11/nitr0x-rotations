print(" — |rnitr0x |cFF00FF00rotations loaded |r— ");
print(" — |cFFFF0000GoodLuck |r& |cFFFFFF00Have Fun! |r— ");

local UIConfig = CreateFrame("Frame", "MUI_BuffFrame", UIParent, "BasicFrameTemplateWithInset");

UIConfig:SetSize(300,200);
UIConfig:SetPoint("LEFT", UIParent, "LEFT");

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 100, 0);
UIConfig.title:SetText("nitr0x rotations");

local rotationsEnabled = true;
UIConfig.toggleButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.toggleButton:SetPoint("TOPLEFT", UIConfig, "TOPLEFT", 10, -30);
UIConfig.toggleButton:SetSize(80, 40);
UIConfig.toggleButton:SetText("On");
UIConfig.toggleButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.toggleButton:SetHighlightFontObject("GameFontHighlightLarge");
UIConfig.toggleButton:SetScript("OnClick", function()
	if rotationsEnabled == true then
		UIConfig.toggleButton:SetText("Off");
		rotationsEnabled = false;
		print(" — |rnitr0x rotations |cFFFF0000DISABLED |r— ");

	else
		UIConfig.toggleButton:SetText("On");
		rotationsEnabled = true;
		print(" — |rnitr0x rotations |cFF00FF00ENABLED |r— ");
	end
end)