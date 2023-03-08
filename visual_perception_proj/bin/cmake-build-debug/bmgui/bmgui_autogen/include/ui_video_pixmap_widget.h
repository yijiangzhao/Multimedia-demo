/********************************************************************************
** Form generated from reading UI file 'video_pixmap_widget.ui'
**
** Created by: Qt User Interface Compiler version 5.14.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VIDEO_PIXMAP_WIDGET_H
#define UI_VIDEO_PIXMAP_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_video_pixmap_widget
{
public:

    void setupUi(QWidget *video_pixmap_widget)
    {
        if (video_pixmap_widget->objectName().isEmpty())
            video_pixmap_widget->setObjectName(QString::fromUtf8("video_pixmap_widget"));
        video_pixmap_widget->resize(277, 208);

        retranslateUi(video_pixmap_widget);

        QMetaObject::connectSlotsByName(video_pixmap_widget);
    } // setupUi

    void retranslateUi(QWidget *video_pixmap_widget)
    {
        video_pixmap_widget->setWindowTitle(QCoreApplication::translate("video_pixmap_widget", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class video_pixmap_widget: public Ui_video_pixmap_widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VIDEO_PIXMAP_WIDGET_H
