#include "Global/Public/Global.h"

#include "Global/Public/Miscellaneous/Log.h"

DEFINE_LOG_CATEGORY(LogGlobal);

void FGlobalModule::StartupModule()
{
	UE_LOG(LogGlobal, Log, TEXT("Global module starting up"));
}

void FGlobalModule::ShutdownModule()
{
	UE_LOG(LogGlobal, Log, TEXT("Global module shutting down"));
}
    
IMPLEMENT_MODULE(FGlobalModule, Global)