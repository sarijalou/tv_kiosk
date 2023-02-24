
import QtQuick 6.4
import QtQuick.Controls 6.4
import QtQuick3D 6.4
//import UntitledProject
//import Quick3DAssets.Mma_Kick 1.0

import "asset_imports/Quick3DAssets/Mma_Kick"


Rectangle {

    width: 400
    height: 700

    color : "#dba5a5"


    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 35
                y: 160
                eulerRotation.x: -25
                eulerRotation.y: 0
                z: 180
            }

//            Mma_Kick {
//                id: mma_Kick
//            }




        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "green"
        }
    }


}
