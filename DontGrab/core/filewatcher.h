#ifndef FILEWATCHER_H
#define FILEWATCHER_H

#include <functional>
#include <QFileSystemWatcher>
#include <QDir>
#include <QTimer>
#include <QObject>

class FileWatcher : public QObject
{
    Q_OBJECT
public:
    FileWatcher(QObject *parent = nullptr);
    void setDirectory(const QString &path);

public Q_SLOTS:
    void onDirectoryChanged(const QString& path);
    void onFileChanged(const QString& path);

private:
    void addPaths(QDir &directory);

private:
    QFileSystemWatcher m_watcher;
    QDir m_dir;
    QTimer m_timer;

Q_SIGNALS:
    void reloadUI();

};

#endif // FILEWATCHER_H
