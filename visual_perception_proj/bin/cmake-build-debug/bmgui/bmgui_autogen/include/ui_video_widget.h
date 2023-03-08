/********************************************************************************
** Form generated from reading UI file 'video_widget.ui'
**
** Created by: Qt User Interface Compiler version 5.14.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VIDEO_WIDGET_H
#define UI_VIDEO_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_video_widget
{
public:
    QLabel *title;

    void setupUi(QWidget *video_widget)
    {
        if (video_widget->objectName().isEmpty())
            video_widget->setObjectName(QString::fromUtf8("video_widget"));
        video_widget->resize(387, 315);
        video_widget->setAutoFillBackground(false);
        title = new QLabel(video_widget);
        title->setObjectName(QString::fromUtf8("title"));
        title->setGeometry(QRect(0, 0, 383, 16));
        title->setMaximumSize(QSize(16777215, 16777215));
        title->setAutoFillBackground(false);

        retranslateUi(video_widget);

        QMetaObject::connectSlotsByName(video_widget);
    } // setupUi

    void retranslateUi(QWidget *video_widget)
    {
        video_widget->setWindowTitle(QCoreApplication::translate("video_widget", "Form", nullptr));
        title->setText(QCoreApplication::translate("video_widget", "NoTitle", nullptr));
    } // retranslateUi

};

namespace Ui {
    class video_widget: public Ui_video_widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VIDEO_WIDGET_H
