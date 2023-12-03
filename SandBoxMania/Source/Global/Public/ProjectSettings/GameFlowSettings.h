#pragma once

#include "Runtime/Core/Public/CoreMinimal.h"
#include "Runtime/DeveloperSettings/Public/Engine/DeveloperSettings.h"

#include "GameFlowSettings.generated.h"

UCLASS(Config=Game, defaultconfig, meta = (DisplayName="GameFlow Settings"))
class GLOBAL_API UGameFlowSettings : public UDeveloperSettings
{
	GENERATED_BODY()

public:	
	UPROPERTY(Config, EditAnywhere, BlueprintReadOnly, Category = "General", meta = (DisplayName="Testos"))
	bool bTest = false;
};
