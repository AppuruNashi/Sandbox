using UnrealBuildTool;

public class Global : ModuleRules
{
    public Global(ReadOnlyTargetRules Target) : base(Target)
    {
        PCHUsage = ModuleRules.PCHUsageMode.UseExplicitOrSharedPCHs;

        PublicDependencyModuleNames.AddRange(
            new string[]
            {
                "Core",
                "DeveloperSettings"
            }
        );

        PrivateDependencyModuleNames.AddRange(
            new string[]
            {
                "CoreUObject",
                "Engine",
                "Slate",
                "SlateCore"
            }
        );
        
        PublicIncludePaths.AddRange(
            new string[]
            {
                "Global/Public/ProjectSettings"
            }
        );

        PrivateIncludePaths.AddRange(
            new string[]
            {
                "Global/Private/ProjectSettings"
            }
        );
    }
}