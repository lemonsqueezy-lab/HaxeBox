using System;
using System.IO;
using Sandbox;
using Editor;

public static class HaxeBox {
    private static AutoBuildService? buildService;

    [Event("editor.created")]
    private static void OnEditorCreated( EditorMainWindow _ ) {
        // generate externs
        try {
            var projectDir = Project.Current.GetRootPath();
            var outRoot =  Path.Combine(projectDir, ".haxe", "sbox").Replace("\\", "/");

            var msg = ExternGen.GenerateFromRuntime(outRoot);
            Log.Info(msg);
        } catch (Exception e) {
            Log.Info(e.ToString());
            throw;
        }

        buildService ??= new AutoBuildService();
        buildService.Start();
    }

    [Event("app.exit")]
    private static void OnAppExit() {
        buildService?.Dispose();
        buildService = null;
    }
}
