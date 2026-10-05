import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    property int peopleInFrame: 0
    property int presentToday: 0
    property int liveAlerts: 0
    property string lastEvent: "System ready"

    Flickable {
        anchors.fill: parent
        contentWidth: width
        contentHeight: content.height + 35
        clip: true

        ColumnLayout {
            id: content
            width: parent.width
            anchors.leftMargin: 24
            anchors.rightMargin: 24
            anchors.topMargin: 22
            spacing: 15

            RowLayout {
                Layout.fillWidth: true
                Column {
                    Text { text: "AI-POWERED MONITORING"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
                    Text { text: "Command Center"; color: "#F5FBFF"; font.pixelSize: 27; font.bold: true }
                    Text { text: "See more. Know more. Act smarter."; color: "#64788B"; font.pixelSize: 12 }
                }
                Item { Layout.fillWidth: true }
                Rectangle {
                    implicitWidth: 130; implicitHeight: 30; radius: 15
                    color: "#0B2B22"; border.color: "#245E4B"
                    Row {
                        anchors.centerIn: parent; spacing: 7
                        Text { text: "●"; color: "#19E6A2"; font.pixelSize: 8 }
                        Text { text: "SYSTEM ONLINE"; color: "#19E6A2"; font.pixelSize: 9; font.bold: true }
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 10
                StatCard { Layout.fillWidth: true; title: "Cameras"; value: "01"; detail: "Primary camera configured"; accent: "#20C9FF"; icon: "◉" }
                StatCard { Layout.fillWidth: true; title: "People Detected"; value: peopleInFrame; detail: "Currently in frame"; accent: "#1787FF"; icon: "♙" }
                StatCard { Layout.fillWidth: true; title: "Present Today"; value: presentToday; detail: "Verified attendance"; accent: "#19E6A2"; icon: "✓" }
                StatCard { Layout.fillWidth: true; title: "Live Alerts"; value: liveAlerts; detail: "Detection events"; accent: "#FF5364"; icon: "!" }
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 12

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredWidth: 2
                    Layout.preferredHeight: 390
                    radius: 13
                    color: "#0A1723"
                    border.color: "#142633"

                    ColumnLayout {
                        anchors.fill: parent; anchors.margins: 14; spacing: 10
                        RowLayout {
                            Layout.fillWidth: true
                            Text { text: "LIVE VISION"; color: "#F5FBFF"; font.pixelSize: 14; font.bold: true }
                            Item { Layout.fillWidth: true }
                            Text { text: "CAM 01 · PRIMARY"; color: "#20C9FF"; font.pixelSize: 9; font.bold: true }
                        }

                        Rectangle {
                            Layout.fillWidth: true; Layout.fillHeight: true
                            radius: 10
                            color: "#03080D"
                            border.color: "#183445"

                            Column {
                                anchors.centerIn: parent; spacing: 8
                                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "◉"; color: "#20C9FF"; font.pixelSize: 34 }
                                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "LIVE CAMERA"; color: "#B9C8D5"; font.pixelSize: 13; font.bold: true }
                                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "Open Live Monitor for AI vision"; color: "#64788B"; font.pixelSize: 10 }
                            }
                        }

                        RowLayout {
                            Layout.fillWidth: true
                            Text { text: "AI VISION STATUS"; color: "#64788B"; font.pixelSize: 9; font.bold: true }
                            Item { Layout.fillWidth: true }
                            Text { text: peopleInFrame + " PEOPLE IN FRAME"; color: "#20C9FF"; font.pixelSize: 9; font.bold: true }
                        }
                    }
                }

                Rectangle {
                    Layout.preferredWidth: 340
                    Layout.preferredHeight: 390
                    radius: 13
                    color: "#0A1723"
                    border.color: "#142633"

                    ColumnLayout {
                        anchors.fill: parent; anchors.margins: 16; spacing: 12
                        Text { text: "TODAY'S INTELLIGENCE"; color: "#20C9FF"; font.pixelSize: 9; font.bold: true }

                        RowLayout {
                            Layout.fillWidth: true
                            Text { text: "Attendance"; color: "#B9C8D5"; font.pixelSize: 12; font.bold: true }
                            Item { Layout.fillWidth: true }
                            Text { text: "0%"; color: "#F5FBFF"; font.pixelSize: 19; font.bold: true }
                        }

                        ProgressBar {
                            Layout.fillWidth: true
                            value: 0
                            background: Rectangle { implicitHeight: 6; radius: 3; color: "#07121D" }
                            contentItem: Rectangle { implicitHeight: 6; radius: 3; color: "#20C9FF" }
                        }

                        Text { text: "STATUS BREAKDOWN"; color: "#64788B"; font.pixelSize: 9; font.bold: true }

                        RowLayout { Text { text: "●"; color: "#19E6A2" }; Text { text: "Present"; color: "#B9C8D5" }; Item { Layout.fillWidth: true }; Text { text: presentToday; color: "#F5FBFF"; font.bold: true } }
                        RowLayout { Text { text: "●"; color: "#FF5364" }; Text { text: "Absent"; color: "#B9C8D5" }; Item { Layout.fillWidth: true }; Text { text: "0"; color: "#F5FBFF"; font.bold: true } }
                        RowLayout { Text { text: "●"; color: "#FFBF4D" }; Text { text: "Late / Review"; color: "#B9C8D5" }; Item { Layout.fillWidth: true }; Text { text: "0"; color: "#F5FBFF"; font.bold: true } }

                        Item { Layout.fillHeight: true }

                        RowLayout {
                            Layout.fillWidth: true
                            Button { text: "▶  LIVE"; Layout.fillWidth: true; onClicked: window.currentPage = 1 }
                            Button { text: "+  REGISTER"; Layout.fillWidth: true; onClicked: window.currentPage = 3 }
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 150
                radius: 13
                color: "#0A1723"
                border.color: "#142633"

                ColumnLayout {
                    anchors.fill: parent; anchors.margins: 14
                    Text { text: "RECENT AI EVENTS"; color: "#F5FBFF"; font.pixelSize: 14; font.bold: true }
                    Text { text: lastEvent; color: "#B9C8D5"; font.pixelSize: 11 }
                    Text { text: "Recognition events and alerts will appear here when connected to the Python engine."; color: "#64788B"; font.pixelSize: 10 }
                }
            }
        }
    }
}
