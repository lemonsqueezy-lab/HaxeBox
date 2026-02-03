using System;
using System.IO;

sealed class Watcher : IDisposable
{
    private readonly FileSystemWatcher watcher;
    private readonly Action<string> onChange;

    public Watcher(string path, Action<string> onChange)
    {
        this.onChange = onChange;

        watcher = new FileSystemWatcher(path)
        {
            IncludeSubdirectories = true,
            NotifyFilter =
                NotifyFilters.FileName |
                NotifyFilters.DirectoryName |
                NotifyFilters.LastWrite |
                NotifyFilters.CreationTime |
                NotifyFilters.Size
        };

        watcher.Changed += OnFs;
        watcher.Created += OnFs;
        watcher.Deleted += OnFs;
        watcher.Renamed += OnFs;
    }

    public void Start() => watcher.EnableRaisingEvents = true;

    public void Stop() => watcher.EnableRaisingEvents = false;

    private void OnFs(object sender, FileSystemEventArgs e)
    {
        onChange(e.FullPath);
    }

    public void Dispose()
    {
        Stop();
        watcher.Changed -= OnFs;
        watcher.Created -= OnFs;
        watcher.Deleted -= OnFs;
        watcher.Renamed -= OnFs;
        watcher.Dispose();
    }
}
