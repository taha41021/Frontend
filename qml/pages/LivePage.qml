import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    property int peopleInFrame: 0
    property bool cameraOnline: false

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 24
        spacing: 14

        RowLayout {
            Layout.fillWidth: true
            Column {
                Text { text: "LIVE AI MONITOR"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
                Text { text: "Live Camera Operations"; color: "#F5FBFF"; font.pixelSize: 26; font.bold: true }
                Text { text: "Face recognition, people detection and AI monitoring"; color: "#64788B"; font.pixelSize: 11 }
            }
            Item { Layout.fillWidth: true }
            Text { text: cameraOnline ? "●  LIVE" : "●  OFFLINE"; color: cameraOnline ? "#19E6A2" : "#FF5364"; font.pixelSize: 10; font.bold: true }
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 12

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "#0A1723"
                radius: 13
                border.color: "#142633"

                ColumnLayout {
                    anchors.fill: parent; anchors.margins: 12
                    RowLayout {
                        Text { text: "CAM 01"; color: "#F5FBFF"; font.bold: true }
                        Item { Layout.fillWidth: true }
                        Text { text: peopleInFrame + " PEOPLE"; color: "#20C9FF"; font.pixelSize: 9; font.bold: true }
                    }

                    Rectangle {
                        Layout.fillWidth: true; Layout.fillHeight: true
                        color: "#02070B"; radius: 10
                        Text {
                            anchors.centerIn: parent
                            text: cameraOnline ? "LIVE CAMERA FEED" : "CAMERA OFFLINE"
                            color: cameraOnline ? "#20C9FF" : "#FF5364"
                            font.pixelSize: 14
                            font.bold: true
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        Button { text: "▶ START"; Layout.fillWidth: true }
                        Button { text: "■ STOP"; Layout.fillWidth: true }
                        Button { text: "⚙ SETTINGS"; Layout.fillWidth: true }
                    }
                }
            }

            Rectangle {
                Layout.preferredWidth: 330
                Layout.fillHeight: true
                color: "#0A1723"
                radius: 13
                border.color: "#142633"

                ColumnLayout {
                    anchors.fill: parent; anchors.margins: 16
                    Text { text: "RECOGNITION"; color: "#F5FBFF"; font.pixelSize: 14; font.bold: true }
                    Text { text: "TRACKS"; color: "#64788B"; font.pixelSize: 9; font.bold: true }
                    Text { text: peopleInFrame; color: "#20C9FF"; font.pixelSize: 35; font.bold: true }
                    Rectangle { Layout.fillWidth: true; height: 1; color: "#142633" }
                    Text { text: "RECOGNIZED PEOPLE"; color: "#64788B"; font.pixelSize: 9; font.bold: true }
                    Repeater {
                        model: ["Waiting for recognition…"]
                        delegate: Text { text: modelData; color: "#B9C8D5"; font.pixelSize: 11; Layout.fillWidth: true; wrapMode: Text.WordWrap }
                    }
                    Item { Layout.fillHeight: true }
                    Text { text: "YOLO + InsightFace"; color: "#20C9FF"; font.pixelSize: 9; font.bold: true }
                }
            }
        }
    }
}
