import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent; anchors.margins: 24; spacing: 14
        Text { text: "INTELLIGENCE"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
        Text { text: "Presence Log"; color: "#F5FBFF"; font.pixelSize: 26; font.bold: true }
        Text { text: "Chronological recognition and attendance activity."; color: "#64788B"; font.pixelSize: 11 }
        Rectangle {
            Layout.fillWidth: true; Layout.fillHeight: true
            color: "#0A1723"; radius: 13; border.color: "#142633"
            Text { anchors.centerIn: parent; text: "Live presence events will be supplied by RecognitionEngine."; color: "#64788B"; font.pixelSize: 12 }
        }
    }
}
