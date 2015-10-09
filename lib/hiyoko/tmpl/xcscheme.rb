require 'hiyoko/tmpl'

class Xcscheme < Tmpl
  @code =<<"EOS"
<?xml version="1.0" encoding="UTF-8"?>
<Scheme
   LastUpgradeVersion = "0700"
   version = "1.3">
   <BuildAction
      parallelizeBuildables = "YES"
      buildImplicitDependencies = "YES">
      <BuildActionEntries>
         <BuildActionEntry
            buildForTesting = "YES"
            buildForRunning = "YES"
            buildForProfiling = "YES"
            buildForArchiving = "YES"
            buildForAnalyzing = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "D2B401801BC2B32E0063EF1D"
               BuildableName = "<%= project_name %>.app"
               BlueprintName = "<%= project_name %>"
               ReferencedContainer = "container:<%= project_name %>.xcodeproj">
            </BuildableReference>
         </BuildActionEntry>
      </BuildActionEntries>
   </BuildAction>
   <TestAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      shouldUseLaunchSchemeArgsEnv = "YES">
      <Testables>
      </Testables>
      <MacroExpansion>
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "D2B401801BC2B32E0063EF1D"
            BuildableName = "<%= project_name %>.app"
            BlueprintName = "<%= project_name %>"
            ReferencedContainer = "container:<%= project_name %>.xcodeproj">
         </BuildableReference>
      </MacroExpansion>
      <AdditionalOptions>
      </AdditionalOptions>
   </TestAction>
   <LaunchAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      launchStyle = "0"
      useCustomWorkingDirectory = "NO"
      ignoresPersistentStateOnLaunch = "NO"
      debugDocumentVersioning = "YES"
      debugServiceExtension = "internal"
      allowLocationSimulation = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "D2B401801BC2B32E0063EF1D"
            BuildableName = "<%= project_name %>.app"
            BlueprintName = "<%= project_name %>"
            ReferencedContainer = "container:<%= project_name %>.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
      <AdditionalOptions>
      </AdditionalOptions>
   </LaunchAction>
   <ProfileAction
      buildConfiguration = "Release"
      shouldUseLaunchSchemeArgsEnv = "YES"
      savedToolIdentifier = ""
      useCustomWorkingDirectory = "NO"
      debugDocumentVersioning = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "D2B401801BC2B32E0063EF1D"
            BuildableName = "<%= project_name %>.app"
            BlueprintName = "<%= project_name %>"
            ReferencedContainer = "container:<%= project_name %>.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </ProfileAction>
   <AnalyzeAction
      buildConfiguration = "Debug">
   </AnalyzeAction>
   <ArchiveAction
      buildConfiguration = "Release"
      revealArchiveInOrganizer = "YES">
   </ArchiveAction>
</Scheme>


EOS
end
