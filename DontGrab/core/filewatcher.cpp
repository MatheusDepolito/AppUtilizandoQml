#include "filewatcher.h"
#include <thread>
#include <QDebug>

FileWatcher::FileWatcher(QObject *parent)
    : QObject{parent}
{
    QObject::connect(&m_watcher, &QFileSystemWatcher::directoryChanged, this, &FileWatcher::onDirectoryChanged);
    QObject::connect(&m_watcher, &QFileSystemWatcher::fileChanged, this, &FileWatcher::onFileChanged);

    // configure the timer to signal the changes to the callback
    m_timer.setInterval(150);
    m_timer.setSingleShot(true);

    // connect timer to callback function
    QObject::connect(&m_timer, &QTimer::timeout, this, &FileWatcher::reloadUI);

    setDirectory(QDir::currentPath() + QDir::separator() + ".." + QDir::separator() + "DontGrab");
}

void FileWatcher::setDirectory(const QString &path)
{
    QDir projectDir = QDir(path);

    if(!projectDir.exists()){
        qWarning() << "Diretorio " << path << " não existe. A recarga ao vivo não funcionará. (A construção de sombra deve estar habilitada)";
        return;
    }
    qInfo() << "Diretório para o observador de arquivos definido como: " << path;

    m_dir = projectDir;
    addPaths(m_dir);
    qInfo() << "Número de arquivos qml assistidos pelo observador de arquivos: "<< m_watcher.files().count();
}

void FileWatcher::onDirectoryChanged(const QString &path)
{
    Q_UNUSED(path);
    qInfo() << "Diretório alterado";
    m_watcher.removePaths(m_watcher.files());
    addPaths(m_dir);
}

void FileWatcher::onFileChanged(const QString &path)
{
    QFileInfo checkFile(path);
    while(!checkFile.exists())
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    m_watcher.addPath(path);
    m_timer.start();
}

void FileWatcher::addPaths(QDir &directory)
{
    //Adiciona arquivos qml do diretório atual
    QStringList qmlFiles = directory.entryList(QStringList() << "*.qml");
    for (int i = 0; i < qmlFiles.count(); i++)
        qmlFiles[i].prepend(directory.absolutePath() + "/");

    if(qmlFiles.count() > 0)
        m_watcher.addPaths(qmlFiles);

    //Ir mais fundo na estrutura de diretórios
    QStringList directories = directory.entryList(QStringList() << "*", QDir::Dirs | QDir::NoSymLinks | QDir::NoDotAndDotDot);

    //Configurando diretórios
    for(int i = 0; i < directories.count(); i++){
        directories[i].prepend(directory.absolutePath() + "/");
        QDir directory(directories[i]);
        addPaths(directory);
    }
}
