import QtQuick
import QtQuick.Controls

Button {
    id: root
    property int page: 0
    property bool active: false
    property string label: ""

    Layout.fillWidth: true
    implicitHeight: 42
    text: label

    background: Rectangle {
        radius: 9
        color: root.active ? "#102B39" : (root.hovered ? "#0B1F2C" : "transparent")
        border.color: root.active ? "#24566C" : "transparent"
    }

    contentItem: Text {
        text: root.label
        color: root.active ? "#20C9FF" : (root.hovered ? "#F5FBFF" : "#7890A3")
        font.pixelSize: 12
        font.bold: root.active
        verticalAlignment: Text.AlignVCenter
        leftPadding: 18
    }
}
