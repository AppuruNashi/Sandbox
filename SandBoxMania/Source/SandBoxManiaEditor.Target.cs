using UnrealBuildTool;
using System.Collections.Generic;

public class SandBoxManiaEditorTarget : TargetRules
{
	public SandBoxManiaEditorTarget( TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.V4;
		IncludeOrderVersion = EngineIncludeOrderVersion.Unreal5_3;
		ExtraModuleNames.Add("SandBoxManiaCore");
		SBX_RegisterModules();
	}

	private void SBX_RegisterModules()
	{
		ExtraModuleNames.AddRange(new string[] { "Global" });
	}
}