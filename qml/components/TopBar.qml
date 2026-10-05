import QtQuick
import QtQuick.Layouts

Rectangle {
    property string statusText: "SYSTEM ONLINE"
    property bool cameraOnline: true

    color: "#07131F"
    border.color: "#142633"
    border.width: 1
    implicitHeight: 70

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        spacing: 12

        Column {
            spacing: 1
            Text { text: "FORGE SC"; color: "#F5FBFF"; font.pixelSize: 14; font.bold: true }
            Text { text: "INTELLIGENCE CONTROL ROOM"; color: "#64788B"; font.pixelSize: 8; font.bold: true; font.letterSpacing: 1.4 }
        }

        Item { Layout.fillWidth: true }

        Rectangle {
            radius: 14
            implicitWidth: 132
            implicitHeight: 30
            color: cameraOnline ? "#0B2B22" : "#2A1419"
            border.color: cameraOnline ? "#245E4B" : "#6A2B35"

            Row {
                anchors.centerIn: parent
                spacing: 7
                Text { text: "●"; color: cameraOnline ? "#19E6A2" : "#FF5364"; font.pixelSize: 8 }
                Text { text: cameraOnline ? "CAMERA LIVE" : "CAMERA OFFLINE"; color: cameraOnline ? "#19E6A2" : "#FF5364"; font.pixelSize: 9; font.bold: true }
            }
        }

        Rectangle {
            radius: 14
            implicitWidth: 126
            implicitHeight: 30
            color: "#0B2B22"
            border.color: "#245E4B"
            Row {
                anchors.centerIn: parent
                spacing: 7
                Text { text: "●"; color: "#19E6A2"; font.pixelSize: 8 }
                Text { text: statusText; color: "#19E6A2"; font.pixelSize: 9; font.bold: true }
            }
        }
    }
}
