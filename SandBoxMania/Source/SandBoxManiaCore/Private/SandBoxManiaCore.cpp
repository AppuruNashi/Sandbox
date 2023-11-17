#include "SandBoxManiaCore.h"
#include "Modules/ModuleManager.h"

#include "Log.h"

void FSandBoxManiaCore::StartupModule()
{
	UE_LOG(LogSandBoxManiaCore, Log, TEXT("SandBoxManiaCore module starting up"));
}

void FSandBoxManiaCore::ShutdownModule()
{
	UE_LOG(LogSandBoxManiaCore, Log, TEXT("SandBoxManiaCore module shutting down"));
}

IMPLEMENT_PRIMARY_GAME_MODULE(FSandBoxManiaCore, SandBoxManiaCore, "SandBoxManiaCore");