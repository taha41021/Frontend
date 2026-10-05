import QtQuick
import QtQuick.Layouts

Rectangle {
    property string title: "STAT"
    property string value: "0"
    property string detail: ""
    property color accent: "#20C9FF"
    property string icon: "●"

    radius: 13
    color: "#0A1723"
    border.color: "#142633"
    implicitHeight: 112

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 15
        spacing: 3

        RowLayout {
            Layout.fillWidth: true
            Text { text: title.toUpperCase(); color: "#64788B"; font.pixelSize: 9; font.bold: true; Layout.fillWidth: true }
            Text { text: icon; color: accent; font.pixelSize: 15; font.bold: true }
        }

        Text { text: value; color: "#F5FBFF"; font.pixelSize: 28; font.bold: true }
        Text { text: detail; color: "#64788B"; font.pixelSize: 10 }

        Rectangle { Layout.fillWidth: true; height: 2; radius: 1; color: accent }
    }
}
