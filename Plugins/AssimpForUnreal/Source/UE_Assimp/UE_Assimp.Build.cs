// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class UE_Assimp : ModuleRules
{
    public UE_Assimp(ReadOnlyTargetRules Target) : base(Target)
    {
        PCHUsage = ModuleRules.PCHUsageMode.UseExplicitOrSharedPCHs;

        PublicIncludePaths.AddRange(
                    new string[] {
            // ... add public include paths required here ...
        }
        );


        PrivateIncludePaths.AddRange(
                    new string[] {
            // ... add other private include paths required here ...
        }
        );


        PublicDependencyModuleNames.AddRange(
                    new string[]
        {
            "Core",
            "GeometryCore",
            "GeometryFramework",
            "GeometryScriptingCore",

            // ... add other public dependencies that you statically link with here ...
        }
        );


        PrivateDependencyModuleNames.AddRange(
                    new string[]
        {
            "CoreUObject",
            "Engine",
            "Slate",
            "SlateCore",
            "ProceduralMeshComponent",
            "Projects",
            "MeshDescription",
            "MeshConversion",
            "StaticMeshDescription",
            "UE_AssimpLibrary",
            // ... add private dependencies that you statically link with here ...
        }
        );


        DynamicallyLoadedModuleNames.AddRange(
                    new string[]
        {
            // ... add any modules that your module loads dynamically here ...
        }
        );
    }
}
