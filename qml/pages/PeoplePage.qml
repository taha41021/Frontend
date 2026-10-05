import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent; anchors.margins: 24; spacing: 14
        RowLayout {
            Layout.fillWidth: true
            Column {
                Text { text: "PEOPLE"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
                Text { text: "People Management"; color: "#F5FBFF"; font.pixelSize: 26; font.bold: true }
                Text { text: "Registered identities and face-recognition profiles."; color: "#64788B"; font.pixelSize: 11 }
            }
            Item { Layout.fillWidth: true }
            Button { text: "+ REGISTER PERSON" }
        }
        Rectangle {
            Layout.fillWidth: true; Layout.fillHeight: true
            color: "#0A1723"; radius: 13; border.color: "#142633"
            Column {
                anchors.centerIn: parent; spacing: 8
                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "♙"; color: "#20C9FF"; font.pixelSize: 32 }
                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "People database"; color: "#B9C8D5"; font.pixelSize: 13; font.bold: true }
                Text { anchors.horizontalCenter: parent.horizontalCenter; text: "Existing PeopleManagement will provide the data."; color: "#64788B"; font.pixelSize: 10 }
            }
        }
    }
}
