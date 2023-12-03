#pragma once

#include "Runtime/Core/Public/CoreMinimal.h"
#include "Runtime/Core/Public/Modules/ModuleManager.h"

class FSandBoxManiaCore : public IModuleInterface
{
public:
	static inline FSandBoxManiaCore& Get()
	{
		return FModuleManager::LoadModuleChecked<FSandBoxManiaCore>("SandBoxManiaCore");
	}

	static inline bool IsAvailable()
	{
		return FModuleManager::Get().IsModuleLoaded("SandBoxManiaCore");
	}

	virtual void StartupModule() override;
	virtual void ShutdownModule() override;
};