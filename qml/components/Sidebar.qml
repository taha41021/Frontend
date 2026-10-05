import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: root
    property int currentPage: 0
    signal navigate(int page)

    color: "#06101A"
    border.color: "#142633"
    border.width: 1

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.preferredHeight: 96

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 20
                anchors.rightMargin: 16
                spacing: 10

                Rectangle {
                    width: 38
                    height: 38
                    radius: 11
                    color: "#102D3B"
                    border.color: "#20C9FF"
                    Text {
                        anchors.centerIn: parent
                        text: "◈"
                        color: "#20C9FF"
                        font.pixelSize: 23
                        font.bold: true
                    }
                }

                Column {
                    spacing: 0
                    Text { text: "FORGE"; color: "#F5FBFF"; font.pixelSize: 19; font.bold: true }
                    Text { text: "INTELLIGENCE"; color: "#20C9FF"; font.pixelSize: 8; font.bold: true; font.letterSpacing: 2 }
                }
                Item { Layout.fillWidth: true }
            }
        }

        Rectangle { Layout.fillWidth: true; height: 1; color: "#142633" }

        Text {
            Layout.topMargin: 20
            Layout.leftMargin: 20
            text: "CONTROL"
            color: "#64788B"
            font.pixelSize: 9
            font.bold: true
            font.letterSpacing: 1.5
        }

        NavButton { label: "⌂   Command Center"; page: 0; active: root.currentPage === page; onClicked: root.navigate(page) }
        NavButton { label: "◉   Live Monitor"; page: 1; active: root.currentPage === page; onClicked: root.navigate(page) }
        NavButton { label: "◎   Attendance"; page: 2; active: root.currentPage === page; onClicked: root.navigate(page) }
        NavButton { label: "♙   People"; page: 3; active: root.currentPage === page; onClicked: root.navigate(page) }

        Text {
            Layout.topMargin: 18
            Layout.leftMargin: 20
            text: "INTELLIGENCE"
            color: "#64788B"
            font.pixelSize: 9
            font.bold: true
            font.letterSpacing: 1.5
        }

        NavButton { label: "▥   Reports & Analytics"; page: 4; active: root.currentPage === page; onClicked: root.navigate(page) }
        NavButton { label: "◷   Presence Log"; page: 5; active: root.currentPage === page; onClicked: root.navigate(page) }

        Text {
            Layout.topMargin: 18
            Layout.leftMargin: 20
            text: "SYSTEM"
            color: "#64788B"
            font.pixelSize: 9
            font.bold: true
            font.letterSpacing: 1.5
        }

        NavButton { label: "⚙   Settings"; page: 6; active: root.currentPage === page; onClicked: root.navigate(page) }

        Item { Layout.fillHeight: true }

        Rectangle {
            Layout.fillWidth: true
            Layout.margins: 12
            Layout.preferredHeight: 48
            radius: 10
            color: "#0C2634"
            border.color: "#24566C"

            Text {
                anchors.centerIn: parent
                text: "+  REGISTER PERSON"
                color: "#20C9FF"
                font.pixelSize: 10
                font.bold: true
            }
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.margins: 15
            Text { text: "●"; color: "#19E6A2"; font.pixelSize: 8 }
            Text { text: "AI ENGINE READY"; color: "#64788B"; font.pixelSize: 9; font.bold: true }
            Item { Layout.fillWidth: true }
            Text { text: "v2.1"; color: "#64788B"; font.pixelSize: 9 }
        }
    }
}
