#nullable enable

using System;
using System.IO;

sealed class WatcherService : IDisposable
{
    private FileSystemWatcher? watcher;
    private readonly string dir;
    private readonly Action cb;

    public WatcherService(string dir, Action cb)
    {
        this.dir = dir ?? throw new ArgumentNullException(nameof(dir));
        this.cb = cb ?? throw new ArgumentNullException(nameof(cb));
    }

    public void Start()
    {
        Directory.CreateDirectory(dir);

        watcher?.Dispose();

        watcher = new FileSystemWatcher(dir)
        {
            IncludeSubdirectories = true,
            Filter = "*.*",
            NotifyFilter = NotifyFilters.FileName | NotifyFilters.DirectoryName | NotifyFilters.LastWrite
        };

        watcher.Created += OnAny;
        watcher.Changed += OnAny;
        watcher.Deleted += OnAny;
        watcher.Renamed += OnAny;

        watcher.EnableRaisingEvents = true;

        cb();
    }

    private void OnAny(object? _, FileSystemEventArgs __) => cb();

    public void Dispose()
    {
        try { watcher?.Dispose(); }
        catch { }

        watcher = null;
        GC.SuppressFinalize(this);
    }
}
