import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "components"
import "pages"

ApplicationWindow {
    id: window
    visible: true
    width: 1440
    height: 900
    minimumWidth: 1100
    minimumHeight: 700
    title: "FORGE SC — Intelligence Control Room"
    color: "#040910"

    property int currentPage: 0

    QtObject {
        id: appState
        property string systemStatus: "SYSTEM ONLINE"
        property bool cameraOnline: true
        property int peopleInFrame: 0
        property int presentToday: 0
        property int liveAlerts: 0
        property string lastEvent: "System ready"
    }

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Sidebar {
            Layout.fillHeight: true
            Layout.preferredWidth: 230
            currentPage: window.currentPage
            onNavigate: function(page) { window.currentPage = page }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#040910"

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                TopBar {
                    Layout.fillWidth: true
                    statusText: appState.systemStatus
                    cameraOnline: appState.cameraOnline
                }

                StackLayout {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    currentIndex: window.currentPage

                    DashboardPage {
                        peopleInFrame: appState.peopleInFrame
                        presentToday: appState.presentToday
                        liveAlerts: appState.liveAlerts
                        lastEvent: appState.lastEvent
                    }
                    LivePage {
                        peopleInFrame: appState.peopleInFrame
                        cameraOnline: appState.cameraOnline
                    }
                    AttendancePage {}
                    PeoplePage {}
                    ReportsPage {}
                    PresencePage {}
                    SettingsPage {}
                }
            }
        }
    }
}
