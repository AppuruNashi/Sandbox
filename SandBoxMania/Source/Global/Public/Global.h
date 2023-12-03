#pragma once

#include "Runtime/Core/Public/CoreMinimal.h"
#include "Runtime/Core/Public/Modules/ModuleManager.h"

class FGlobalModule : public IModuleInterface
{
public:
    static inline FGlobalModule& Get()
    {
        return FModuleManager::LoadModuleChecked<FGlobalModule>("Global");
    }

    static inline bool IsAvailable()
    {
        return FModuleManager::Get().IsModuleLoaded("Global");
    }
    
    virtual void StartupModule() override;
    virtual void ShutdownModule() override;
};
