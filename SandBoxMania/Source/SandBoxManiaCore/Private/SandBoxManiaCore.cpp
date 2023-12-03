#include "SandBoxManiaCore/Public/SandBoxManiaCore.h"

#include "Global/Public/Miscellaneous/Log.h"

DEFINE_LOG_CATEGORY(LogSandBoxManiaCore);

void FSandBoxManiaCore::StartupModule()
{
	UE_LOG(LogSandBoxManiaCore, Log, TEXT("SandBoxManiaCore module starting up"));
}

void FSandBoxManiaCore::ShutdownModule()
{
	UE_LOG(LogSandBoxManiaCore, Log, TEXT("SandBoxManiaCore module shutting down"));
}

IMPLEMENT_PRIMARY_GAME_MODULE(FSandBoxManiaCore, SandBoxManiaCore, "SandBoxManiaCore");