import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    ColumnLayout {
        anchors.fill: parent; anchors.margins: 24; spacing: 14
        Text { text: "SYSTEM"; color: "#20C9FF"; font.pixelSize: 10; font.bold: true }
        Text { text: "ForgeSC Settings"; color: "#F5FBFF"; font.pixelSize: 26; font.bold: true }
        Text { text: "The existing config.py and SettingsDialog remain the source of truth."; color: "#64788B"; font.pixelSize: 11 }

        Rectangle {
            Layout.fillWidth: true; Layout.preferredHeight: 220
            color: "#0A1723"; radius: 13; border.color: "#142633"

            ColumnLayout {
                anchors.fill: parent; anchors.margins: 18; spacing: 12
                Text { text: "CAMERA & RECOGNITION"; color: "#F5FBFF"; font.pixelSize: 14; font.bold: true }
                RowLayout {
                    Layout.fillWidth: true
                    Text { text: "Camera source"; color: "#B9C8D5"; Layout.fillWidth: true }
                    ComboBox { model: ["IP Camera", "USB Webcam"] }
                }
                RowLayout {
                    Layout.fillWidth: true
                    Text { text: "Recognition threshold"; color: "#B9C8D5"; Layout.fillWidth: true }
                    SpinBox { from: 0; to: 100; value: 50 }
                }
                RowLayout {
                    Layout.fillWidth: true
                    Item { Layout.fillWidth: true }
                    Button { text: "SAVE SETTINGS" }
                }
            }
        }
    }
}
