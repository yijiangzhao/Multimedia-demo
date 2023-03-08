/********************************************************************************
** Form generated from reading UI file 'container_widget.ui'
**
** Created by: Qt User Interface Compiler version 5.14.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONTAINER_WIDGET_H
#define UI_CONTAINER_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_container_widget
{
public:

    void setupUi(QWidget *container_widget)
    {
        if (container_widget->objectName().isEmpty())
            container_widget->setObjectName(QString::fromUtf8("container_widget"));
        container_widget->resize(400, 300);

        retranslateUi(container_widget);

        QMetaObject::connectSlotsByName(container_widget);
    } // setupUi

    void retranslateUi(QWidget *container_widget)
    {
        container_widget->setWindowTitle(QCoreApplication::translate("container_widget", "container_widget", nullptr));
    } // retranslateUi

};

namespace Ui {
    class container_widget: public Ui_container_widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONTAINER_WIDGET_H
