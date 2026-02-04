package sandbox.solutiongenerator;

@:native("Sandbox.SolutionGenerator.ProjectInfo")
extern class ProjectInfo {
    function new(type:String, packageIdent:String, name:String, path:String, settings:sandbox.compiler.Configuration):Void;
    var Name(default,default):String;
    var PackageIdent(default,default):String;
    var Path(default,default):String;
    var Type(default,default):String;
    var CsprojPath(default,default):String;
    var Guid(default,default):String;
    var IsEditorProject(default,default):Bool;
    var IsUnitTestProject(default,default):Bool;
    var SandboxProjectFilePath(default,default):String;
    var Settings(default,default):sandbox.compiler.Configuration;
    var Folder(default,default):String;
    var References(default,default):system.collections.generic.List<String>;
    var PackageReferences(default,default):system.collections.generic.List<String>;
    var GlobalStatic(default,default):system.collections.generic.List<String>;
    var GlobalUsing(default,default):system.collections.generic.List<String>;
    var IncludeFiles(default,default):system.collections.generic.List<String>;
    var IgnoreFiles(default,default):system.collections.generic.List<String>;
    function GetDependencies(allProjects:system.collections.generic.Dictionary<String,sandbox.solutiongenerator.ProjectInfo>):system.collections.generic.IEnumerable<sandbox.solutiongenerator.ProjectInfo>;
}
