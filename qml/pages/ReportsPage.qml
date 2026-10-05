import QtQuick
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent; anchors.margins: 24; spacing: 14
        Text { text: "INTELLIGENCE"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
        Text { text: "Reports & Analytics"; color: "#F5FBFF"; font.pixelSize: 26; font.bold: true }
        Text { text: "Performance, attendance and recognition insights."; color: "#64788B"; font.pixelSize: 11 }
        Rectangle {
            Layout.fillWidth: true; Layout.fillHeight: true
            color: "#0A1723"; radius: 13; border.color: "#142633"
            Text { anchors.centerIn: parent; text: "Analytics widgets connect to the existing database and recognition events during integration."; color: "#64788B"; font.pixelSize: 12 }
        }
    }
}
