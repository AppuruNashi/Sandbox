#include "ActorTest.h"

#include "Global/Public/Miscellaneous/Log.h"

// Sets default values
AActorTest::AActorTest()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void AActorTest::BeginPlay()
{
	Super::BeginPlay();

	UE_LOG(LogSandBoxManiaCore, Log, TEXT("ActorTest BeginPlay()"));
}

// Called every frame
void AActorTest::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

