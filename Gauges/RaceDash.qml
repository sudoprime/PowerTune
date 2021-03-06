import QtQuick 2.8
import QtQuick.Extras 1.4
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4


Item {

 anchors.fill: parent

    Rectangle {
        id:racedashwindow
        width: parent.width
        height:parent.height
        color:"grey"
        Gauge {
            id: gauge
            height: parent.height
            width: parent.width /1.025
            y:0
            minorTickmarkCount: 0
            tickmarkStepSize : 9000
            //labelStepSize: 9000
            orientation : Qt.Horizontal
            minimumValue: 0
            maximumValue: 9000

            value: Dashboard.rpm
            Behavior on value {
                NumberAnimation {
                    duration: 5
                }
            }
            style: GaugeStyle {
                valueBar: Rectangle {
                    width:  400
                    color: Qt.rgba(gauge.value / gauge.maximumValue, 1.1 - gauge.value / gauge.maximumValue, 0, 1)
                }
            }
        }

        Image {
            height: parent.height
            width: parent.width
            source: "/graphics/Racedash800x480.png"

        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter

            spacing: 20
            StatusIndicator {
                color: "green"
                active: { (Dashboard.rpm > "3000") ? true: false; }
            }
            StatusIndicator {
                color: "green"
                active: { (Dashboard.rpm > "4000") ? true: false; }
            }
            StatusIndicator {
                color: "yellow"
                active: { (Dashboard.rpm > "5000") ? true: false; }
            }
            StatusIndicator {
                color: "yellow"
                active: { (Dashboard.rpm > "6000") ? true: false; }
            }
            StatusIndicator {
                color: "red"
                active: { (Dashboard.rpm > "7900") ? true: false; }
            }
            StatusIndicator {
                color: "red"
                active: { (Dashboard.rpm > "7900") ? true: false; }
            }
            StatusIndicator {
                color: "yellow"
                active: { (Dashboard.rpm > "6000") ? true: false; }
            }
            StatusIndicator {
                color: "yellow"
                active: { (Dashboard.rpm > "5000") ? true: false; }
            }
            StatusIndicator {
                color: "green"
                active: { (Dashboard.rpm > "4000") ? true: false; }
            }
            StatusIndicator {
                color: "green"
                active: { (Dashboard.rpm > "3000") ? true: false; }
            }
        }

        Text {
            text:"0"
            font.pixelSize: racedashwindow.width /40
            y: 220
            x: 10
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"1"
            font.pixelSize: racedashwindow.width /40
            y: 220
            x: 80
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"2"
            font.pixelSize: racedashwindow.width /40
            y: 160
            x: 165
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"3"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 250
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"4"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 335
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"5"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 420
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"6"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 505
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"7"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 590
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"8"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 675
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:"9"
            font.pixelSize: racedashwindow.width /40
            y: 120
            x: 760
            font.bold: true
            font.family: "Eurostile"
            color: "grey"

        }
        Text {
            text:" RPM : " + Dashboard.rpm
            font.pixelSize: 32
            y: 160
            x: 190
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text: " Speed : " +(Dashboard.speed).toFixed(0)
            font.pixelSize: 32
            y: 160
            x: 520
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text:" AFR "
            font.pixelSize: 32
            y: 330
            x: 40
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text: (Dashboard.auxcalc1).toFixed(1)
            font.pixelSize: 32
            y: 380
            x: 50
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }

        Text {
            text:" Boost "
            font.pixelSize: 32
            y: 330
            x: 170
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text: (Dashboard.pim).toFixed(2)
            font.pixelSize: 32
            y: 380
            x: 190
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text:" Air T. "
            font.pixelSize: 32
            y: 330
            x: 350
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text: (Dashboard.Intaketemp).toFixed(0)
            font.pixelSize: 32
            y: 380
            x: 370
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text:" Water T. "
            font.pixelSize: 32
            y: 330
            x: 500
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
        Text {
            text: (Dashboard.Watertemp).toFixed(0)
            font.pixelSize: 32
            y: 380
            x: 560
            font.bold: true
            font.family: "Eurostile"
            color: "white"

        }
    }
}
