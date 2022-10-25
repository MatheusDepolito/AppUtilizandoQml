#ifndef COMPONENTCREATORENGINE_H
#define COMPONENTCREATORENGINE_H

#include "core/filewatcher.h"
#include <QQmlApplicationEngine>
#include <QObject>

class ComponentCreatorEngine : public QQmlApplicationEngine
{
    Q_OBJECT
public:
   ComponentCreatorEngine(QObject *parent = Q_NULLPTR);

    Q_INVOKABLE void clearCache();
private:
    FileWatcher* m_fileWatcher;

Q_SIGNALS:
    void reloadUI();

};

#endif // COMPONENTCREATORENGINE_H
