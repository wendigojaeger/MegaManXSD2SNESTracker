/**
 * Mega Man X progress tracker for Magic2snes
 */
import QtQuick 2.12
import USB2Snes 1.0
import "qrc:/extrajs.js" as Helper // Some extra javascript function
import "tracker_engine.js" as Tracker

Rectangle {
    width: 512
    height: 448
    color: "#00FF00"

    Image {
        id: x_body
        x: 206
        y: 129
        width: implicitWidth
        height: implicitHeight
        visible: true
        fillMode: Image.PreserveAspectFit
        source: "images/x_body_basic.png"
        smooth: false

        Image {
            id: x_body_body
            width: x_body.width
            height: x_body.height
            visible: false
            fillMode: Image.PreserveAspectFit
            source: "images/x_body_body.png"
            smooth: false
        }

        Image {
            id: x_body_buster
            width: x_body.width
            height: x_body.height
            visible: false
            fillMode: Image.PreserveAspectFit
            source: "images/x_body_buster.png"
            smooth: false
        }

        Image {
            id: x_body_head
            width: x_body.width
            height: x_body.height
            visible: false
            fillMode: Image.PreserveAspectFit
            source: "images/x_body_head.png"
            smooth: false
        }

        Image {
            id: x_body_leg
            width: x_body.width
            height: x_body.height
            visible: false
            fillMode: Image.PreserveAspectFit
            source: "images/x_body_leg.png"
            smooth: false
        }
    }

    Item {
        id: portrait
        x: 64
        y: 34
        width: 400
        height: 406

        Image {
            id: launch_octopus
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/launch_octopus_off.png"
            smooth: false
        }

        Image {
            id: chill_penguin
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/chill_penguin_off.png"
            smooth: false
        }

        Image {
            id: flame_mammoth
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/flame_mammoth_off.png"
            smooth: false
        }

        Image {
            id: boomer_kuwanger
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/boomer_kuwanger_off.png"
            smooth: false
        }

        Image {
            id: sting_chameleon
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/sting_chameleon_off.png"
            smooth: false
        }

        Image {
            id: spark_mandrill
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/spark_mandrill_off.png"
            smooth: false
        }

        Image {
            id: storm_eagle
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/storm_eagle_off.png"
            smooth: false
        }

        Image {
            id: armored_armadillo
            width: portrait.width
            height: portrait.height
            fillMode: Image.PreserveAspectFit
            source: "images/armored_armadillo_off.png"
            smooth: false
        }
    }

    Item {
        id: sigma_stages
        width: 200
        height: 200

        Image {
            id: sigma_stage1
            x: 78
            y: 39
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/sigma_stage1_off.png"
            smooth: false
        }

        Image {
            id: sigma_stage2
            x: 365
            y: 39
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/sigma_stage2_off.png"
            smooth: false
        }

        Image {
            id: sigma_stage3
            x: 78
            y: 326
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/sigma_stage3_off.png"
            smooth: false
        }

        Image {
            id: sigma_stage4
            x: 365
            y: 326
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/sigma_stage4_off.png"
            smooth: false
        }
    }

    Image {
        id: background
        width: implicitWidth * 2
        height: implicitHeight * 2
        fillMode: Image.PreserveAspectFit
        source: "images/background.png"
        smooth: false
    }

    Item {
        id: hearts
        width: 200
        height: 200

        Image {
            id: heart_launch_octopus
            x: 174
            y: 43
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_chill_penguin
            x: 270
            y: 43
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_flame_mammoth
            x: 368
            y: 136
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_boomer_kuwanger
            x: 368
            y: 235
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_sting_chameleon
            x: 270
            y: 330
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_spark_mandrill
            x: 174
            y: 330
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_storm_eagle
            x: 80
            y: 235
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }

        Image {
            id: heart_armored_armadillo
            x: 80
            y: 136
            width: implicitWidth * 2
            height: implicitHeight * 2
            autoTransform: false
            fillMode: Image.PreserveAspectFit
            source: "images/heart_off.png"
            smooth: false
        }
    }

    Item {
        id: etanks
        width: 200
        height: 200

        Image {
            id: etank_storm_eagle
            x: 121
            y: 277
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/etank_off.png"
            smooth: false
        }

        Image {
            id: etank_flame_mammoth
            x: 407
            y: 181
            width: implicitWidth * 2
            height: implicitHeight * 2
            source: "images/etank_off.png"
            fillMode: Image.PreserveAspectFit
            smooth: false
        }

        Image {
            id: etank_spark_mandrill
            x: 219
            y: 372
            width: implicitWidth * 2
            height: implicitHeight * 2
            fillMode: Image.PreserveAspectFit
            source: "images/etank_off.png"
            smooth: false
        }

        Image {
            id: etank_armored_armadillo
            x: 121
            y: 181
            width: implicitWidth * 2
            height: implicitHeight * 2
            source: "images/etank_off.png"
            fillMode: Image.PreserveAspectFit
            smooth: false
        }
    }

    Image {
        id: hadoken
        x: 179
        y: 141
        width: implicitWidth
        height: implicitHeight
        fillMode: Image.PreserveAspectFit
        source: "images/hadoken_off.png"
    }

    USB2Snes {
        id: usb2snes
        objectName: "usb2snes"
        windowTitle: "Mega Man X - Progress Tracker"
        timer: 160

        onInit: {
            Tracker.init();
        }

        onTimerTick: {
            Tracker.refreshData();

            var bossStatus = Tracker.getBossStatus();
            launch_octopus.source = bossStatus["launch_octopus"];
            sting_chameleon.source = bossStatus["sting_chameleon"];
            armored_armadillo.source = bossStatus["armored_armadillo"];
            flame_mammoth.source = bossStatus["flame_mammoth"];
            storm_eagle.source = bossStatus["storm_eagle"];
            spark_mandrill.source = bossStatus["spark_mandrill"];
            boomer_kuwanger.source = bossStatus["boomer_kuwanger"];
            chill_penguin.source = bossStatus["chill_penguin"];

            var heartStatus = Tracker.getHeartStatus();
            heart_launch_octopus.source = heartStatus["heart_launch_octopus"];
            heart_sting_chameleon.source = heartStatus["heart_sting_chameleon"];
            heart_armored_armadillo.source = heartStatus["heart_armored_armadillo"];
            heart_flame_mammoth.source = heartStatus["heart_flame_mammoth"];
            heart_storm_eagle.source = heartStatus["heart_storm_eagle"];
            heart_spark_mandrill.source = heartStatus["heart_spark_mandrill"];
            heart_boomer_kuwanger.source = heartStatus["heart_boomer_kuwanger"];
            heart_chill_penguin.source = heartStatus["heart_chill_penguin"];

            var etankStatus = Tracker.getEtankStatus();
            etank_armored_armadillo.source = etankStatus["etank_armored_armadillo"];
            etank_flame_mammoth.source = etankStatus["etank_flame_mammoth"];
            etank_spark_mandrill.source = etankStatus["etank_spark_mandrill"];
            etank_storm_eagle.source = etankStatus["etank_storm_eagle"];

            var upgradeStatus = Tracker.getUpgradeStatus();
            x_body_head.visible = upgradeStatus["x_body_head"];
            x_body_buster.visible = upgradeStatus["x_body_buster"];
            x_body_body.visible = upgradeStatus["x_body_body"];
            x_body_leg.visible = upgradeStatus["x_body_leg"];

            var sigmaStatus = Tracker.getSigmaStageStatus();
            sigma_stage1.source = sigmaStatus["sigma_stage1"];
            sigma_stage2.source = sigmaStatus["sigma_stage2"];
            sigma_stage3.source = sigmaStatus["sigma_stage3"];
            sigma_stage4.source = sigmaStatus["sigma_stage4"];

            var hadokenStatus = Tracker.getHadokenStatus();
            if (hadokenStatus) {
                hadoken.source = "images/hadoken_on.png";
            } else {
                hadoken.source = "images/hadoken_off.png";
            }
        }
    }
}
