import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    property alias cfg_panelDisplayMode: panelModeCombo.currentValue
    property alias cfg_distanceUnit: distanceUnitCombo.currentValue
    property alias cfg_keystatsctlPath: ctlPathField.text

    Kirigami.FormLayout {
        QQC2.ComboBox {
            id: panelModeCombo
            Kirigami.FormData.label: i18n("Panel indicator:")
            textRole: "label"
            valueRole: "id"
            model: [
                { id: "both", label: i18n("Keys & Clicks") },
                { id: "keys", label: i18n("Keys Only") },
                { id: "icon_only", label: i18n("Icon Only") }
            ]
        }

        QQC2.ComboBox {
            id: distanceUnitCombo
            Kirigami.FormData.label: i18n("Distance units:")
            textRole: "label"
            valueRole: "id"
            model: [
                { id: "metric", label: i18n("Metric (m / km)") },
                { id: "imperial", label: i18n("Imperial (ft / mi)") },
                { id: "pixels", label: i18n("Raw Pixels (px)") }
            ]
        }

        QQC2.TextField {
            id: ctlPathField
            Kirigami.FormData.label: i18n("keystatsctl binary:")
            placeholderText: "keystatsctl"
            Layout.fillWidth: true
        }
    }
}
