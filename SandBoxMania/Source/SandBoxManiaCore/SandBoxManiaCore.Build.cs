using UnrealBuildTool;

public class SandBoxManiaCore : ModuleRules
{
	public SandBoxManiaCore(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;
	
		PublicDependencyModuleNames.AddRange(
			new string[]
			{
				"Core",
				"Global"
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
				"Global/Public/Miscellaneous"
			}
		);
		
		PrivateIncludePaths.AddRange(
			new string[]
			{
				"Global/Private/Miscellaneous"
			}
		);
	}
}