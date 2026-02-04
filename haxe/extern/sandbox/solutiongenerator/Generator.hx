package sandbox.solutiongenerator;

@:native("Sandbox.SolutionGenerator.Generator")
extern class Generator {
    function new():Void;
    function AddProject(type:String, packageIdent:String, name:String, path:String, settings:sandbox.compiler.Configuration):sandbox.solutiongenerator.ProjectInfo;
    function Run(gameExePath:String, managedFolder:String, solutionPath:String, relativePath:String, projectPath:String):Void;
}
