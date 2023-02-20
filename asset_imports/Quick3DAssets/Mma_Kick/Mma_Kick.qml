import QtQuick 6.4
import QtQuick3D 6.4
import QtQuick.Timeline 6.4



Node {
    // Materials
    DefaultMaterial {
        id: ch33_body_material
        diffuseMap: Texture {
            source: "maps/Ch33_1001_Diffuse.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        specularMap: Texture {
            source: "maps/Ch33_1001_Specular.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        normalMap: Texture {
            source: "maps/Ch33_1001_Normal.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }    }
    DefaultMaterial {
        id: ch33_hair_material
        diffuseMap: Texture {
            source: "maps/Ch33_1002_Diffuse.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }
        opacityMap: Texture {
            source: "maps/Ch33_1002_Diffuse.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }        bumpMap: Texture {
            source: "maps/Ch33_1002_Normal.png.png"
            pivotU: 0.5
            pivotV: 0.5
            generateMipmaps: true
            mipFilter: Texture.Linear
        }        bumpAmount: 1
    }
    // end of Materials

    Node {
        id: rootNode
        Node {
            id: mixamorig7_Hips
            y: 99.5695
            z: 2.5607
            Node {
                id: mixamorig7_Spine
                y: 9.69443
                z: -1.10973
                rotation: Qt.quaternion(0.998377, -0.0569567, 0, 0)
                Node {
                    id: mixamorig7_Spine1
                    y: 11.384
                    z: -1.00445e-09
                    Node {
                        id: mixamorig7_Spine2
                        y: 13.0103
                        z: 2.6652e-08
                        Node {
                            id: mixamorig7_Neck
                            y: 14.6366
                            z: -2.8286e-06
                            rotation: Qt.quaternion(0.998377, 0.0569567, 0, 0)
                            scale.y: 1
                            scale.z: 1
                            Node {
                                id: mixamorig7_Head
                                y: 6.94429
                                z: 1.98248
                                Node {
                                    id: mixamorig7_HeadTop_End
                                    y: 22.7896
                                    z: 6.50605
                                }
                            }
                        }
                        Node {
                            id: mixamorig7_LeftShoulder
                            x: 6.6813
                            y: 12.8876
                            z: -0.157329
                            rotation: Qt.quaternion(-0.428927, -0.551855, -0.438716, 0.564805)
                            Node {
                                id: mixamorig7_LeftArm
                                x: 4.04439e-09
                                y: 14.0161
                                z: 4.12856e-08
                                rotation: Qt.quaternion(0.994662, -0.101322, 0.00197906, -0.0194282)
                                scale.y: 1
                                scale.z: 1
                                Node {
                                    id: mixamorig7_LeftForeArm
                                    x: 2.25627e-08
                                    y: 27.3303
                                    z: -5.33268e-09
                                    rotation: Qt.quaternion(0.997646, -0.0430407, -0.00230096, 0.0533342)
                                    Node {
                                        id: mixamorig7_LeftHand
                                        x: -9.54646e-09
                                        y: 20.8888
                                        z: 3.66489e-08
                                        rotation: Qt.quaternion(0.992404, 0.0631023, 0.103109, 0.0228148)
                                        scale.y: 1
                                        Node {
                                            id: mixamorig7_LeftHandThumb1
                                            x: -2.97896
                                            y: 3.69387
                                            z: 1.28771
                                            rotation: Qt.quaternion(0.952919, 0.127905, 0.0365743, 0.272486)
                                            Node {
                                                id: mixamorig7_LeftHandThumb2
                                                x: -0.46062
                                                y: 3.90655
                                                z: -1.20556e-07
                                                rotation: Qt.quaternion(0.996907, 0.0785843, 0, 0)
                                                Node {
                                                    id: mixamorig7_LeftHandThumb3
                                                    x: 0.10237
                                                    y: 3.44711
                                                    z: -9.28408e-08
                                                    rotation: Qt.quaternion(0.990273, -0.139138, 0, 0)
                                                    Node {
                                                        id: mixamorig7_LeftHandThumb4
                                                        x: 0.358251
                                                        y: 2.6346
                                                        z: 5.0476e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_LeftHandIndex1
                                            x: -3.55689
                                            y: 11.071
                                            z: 0.15364
                                            rotation: Qt.quaternion(0.998368, 0.0102431, 0.000576355, 0.0561755)
                                            scale.y: 1
                                            Node {
                                                id: mixamorig7_LeftHandIndex2
                                                x: 0.0144434
                                                y: 3.23038
                                                z: -3.08315e-08
                                                rotation: Qt.quaternion(0.997481, 0.0709286, 0, 0)
                                                Node {
                                                    id: mixamorig7_LeftHandIndex3
                                                    x: -0.0164937
                                                    y: 3.09379
                                                    z: -1.02653e-08
                                                    rotation: Qt.quaternion(0.999023, -0.0441852, 0, 0)
                                                    Node {
                                                        id: mixamorig7_LeftHandIndex4
                                                        x: 0.00205053
                                                        y: 2.71029
                                                        z: 8.23815e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_LeftHandMiddle1
                                            x: -1.08115
                                            y: 11.1731
                                            z: -0.244112
                                            rotation: Qt.quaternion(0.999827, 0.0177332, -9.98422e-05, -0.00562926)
                                            scale.x: 1
                                            Node {
                                                id: mixamorig7_LeftHandMiddle2
                                                x: 0.0153202
                                                y: 3.4654
                                                z: 1.091e-08
                                                rotation: Qt.quaternion(0.997058, 0.0766506, 0, 0)
                                                Node {
                                                    id: mixamorig7_LeftHandMiddle3
                                                    x: -0.0117733
                                                    y: 3.34013
                                                    z: -1.57831e-08
                                                    rotation: Qt.quaternion(0.999745, -0.0225617, 0, 0)
                                                    Node {
                                                        id: mixamorig7_LeftHandMiddle4
                                                        x: -0.00354689
                                                        y: 2.99356
                                                        z: 3.71281e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_LeftHandRing1
                                            x: 1.20821
                                            y: 11.3815
                                            z: -0.267355
                                            rotation: Qt.quaternion(0.996183, 0.0822414, -0.00240642, -0.0291487)
                                            scale.x: 1
                                            scale.z: 1
                                            Node {
                                                id: mixamorig7_LeftHandRing2
                                                x: -0.00375009
                                                y: 2.89192
                                                z: -9.20986e-09
                                                rotation: Qt.quaternion(0.999781, 0.0209491, 0, 0)
                                                Node {
                                                    id: mixamorig7_LeftHandRing3
                                                    x: -0.0085889
                                                    y: 2.70524
                                                    z: -3.26971e-08
                                                    rotation: Qt.quaternion(0.995409, -0.0957115, 0, 0)
                                                    Node {
                                                        id: mixamorig7_LeftHandRing4
                                                        x: 0.012339
                                                        y: 2.30701
                                                        z: -8.02515e-10
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_LeftHandPinky1
                                            x: 3.42983
                                            y: 10.2451
                                            z: 0.0611768
                                            rotation: Qt.quaternion(0.998655, 0.0462667, -0.00108203, -0.0233554)
                                            Node {
                                                id: mixamorig7_LeftHandPinky2
                                                x: 0.0139281
                                                y: 2.64771
                                                z: -7.75552e-08
                                                rotation: Qt.quaternion(0.996129, 0.0878994, 0, 0)
                                                Node {
                                                    id: mixamorig7_LeftHandPinky3
                                                    x: -0.00832
                                                    y: 2.21973
                                                    z: -1.38021e-07
                                                    rotation: Qt.quaternion(0.999855, -0.017035, 0, 0)
                                                    Node {
                                                        id: mixamorig7_LeftHandPinky4
                                                        x: -0.00560806
                                                        y: 1.85549
                                                        z: 5.39029e-09
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Node {
                            id: mixamorig7_RightShoulder
                            x: -6.6813
                            y: 12.8973
                            z: -0.241975
                            rotation: Qt.quaternion(0.426598, 0.547996, -0.441765, 0.567943)
                            scale.z: 1
                            Node {
                                id: mixamorig7_RightArm
                                x: -9.14896e-09
                                y: 14.0161
                                z: 4.06751e-08
                                rotation: Qt.quaternion(0.994928, -0.100201, -0.000882885, 0.00876642)
                                scale.x: 1
                                scale.y: 1
                                Node {
                                    id: mixamorig7_RightForeArm
                                    x: 3.00479e-08
                                    y: 27.3182
                                    z: -3.19864e-08
                                    rotation: Qt.quaternion(0.997819, -0.0431921, 0.00215889, -0.0498744)
                                    Node {
                                        id: mixamorig7_RightHand
                                        x: -8.80266e-09
                                        y: 20.8898
                                        z: 5.52566e-09
                                        rotation: Qt.quaternion(0.991717, 0.0636852, -0.108965, -0.0238396)
                                        Node {
                                            id: mixamorig7_RightHandThumb1
                                            x: 3.07882
                                            y: 3.79692
                                            z: 1.38834
                                            rotation: Qt.quaternion(0.95483, 0.134312, -0.0369222, -0.262482)
                                            Node {
                                                id: mixamorig7_RightHandThumb2
                                                x: 0.564256
                                                y: 4.02596
                                                z: 2.15844e-07
                                                rotation: Qt.quaternion(0.998628, 0.0523647, 0, 0)
                                                Node {
                                                    id: mixamorig7_RightHandThumb3
                                                    x: -0.147432
                                                    y: 3.36026
                                                    z: -3.47634e-09
                                                    rotation: Qt.quaternion(0.999758, -0.0220197, 0, 0)
                                                    Node {
                                                        id: mixamorig7_RightHandThumb4
                                                        x: -0.416824
                                                        y: 2.59333
                                                        z: 4.63198e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_RightHandIndex1
                                            x: 3.65041
                                            y: 11.2101
                                            z: 0.0819846
                                            rotation: Qt.quaternion(0.999162, 0.0204676, -0.00072607, -0.0354444)
                                            Node {
                                                id: mixamorig7_RightHandIndex2
                                                x: -0.021718
                                                y: 3.22997
                                                z: -6.99483e-08
                                                rotation: Qt.quaternion(0.998417, 0.056252, 0, 0)
                                                Node {
                                                    id: mixamorig7_RightHandIndex3
                                                    x: 0.00254355
                                                    y: 3.00844
                                                    z: 3.98051e-08
                                                    rotation: Qt.quaternion(0.998796, 0.0490673, 0, 0)
                                                    scale.y: 1
                                                    scale.z: 1
                                                    Node {
                                                        id: mixamorig7_RightHandIndex4
                                                        x: 0.0191745
                                                        y: 2.57738
                                                        z: -3.90328e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_RightHandMiddle1
                                            x: 1.05049
                                            y: 11.241
                                            z: -0.190083
                                            rotation: Qt.quaternion(0.999921, 0.00484388, 5.59868e-05, 0.0115578)
                                            Node {
                                                id: mixamorig7_RightHandMiddle2
                                                x: -0.0190296
                                                y: 3.51383
                                                z: 3.62016e-09
                                                rotation: Qt.quaternion(0.99558, 0.0939195, 0, 0)
                                                Node {
                                                    id: mixamorig7_RightHandMiddle3
                                                    x: 0.0153951
                                                    y: 3.29951
                                                    z: 5.48063e-08
                                                    rotation: Qt.quaternion(0.999499, -0.0316407, 0, 0)
                                                    Node {
                                                        id: mixamorig7_RightHandMiddle4
                                                        x: 0.00363448
                                                        y: 2.88867
                                                        z: 5.96819e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_RightHandRing1
                                            x: -1.217
                                            y: 11.3197
                                            z: -0.163534
                                            rotation: Qt.quaternion(0.99752, 0.0623135, 0.00204015, 0.0326589)
                                            scale.y: 1
                                            scale.z: 1
                                            Node {
                                                id: mixamorig7_RightHandRing2
                                                x: -0.00439356
                                                y: 2.8781
                                                z: 3.6724e-08
                                                rotation: Qt.quaternion(0.999174, 0.0406388, 0, 0)
                                                Node {
                                                    id: mixamorig7_RightHandRing3
                                                    x: 0.00639508
                                                    y: 2.7392
                                                    z: -8.11857e-08
                                                    rotation: Qt.quaternion(0.999421, -0.0340212, 0, 0)
                                                    Node {
                                                        id: mixamorig7_RightHandRing4
                                                        x: -0.00200152
                                                        y: 2.33526
                                                        z: -1.202e-08
                                                    }
                                                }
                                            }
                                        }
                                        Node {
                                            id: mixamorig7_RightHandPinky1
                                            x: -3.48389
                                            y: 10.2343
                                            z: -0.0569574
                                            rotation: Qt.quaternion(0.997174, 0.0670643, 0.00227152, 0.0337749)
                                            Node {
                                                id: mixamorig7_RightHandPinky2
                                                x: -0.00546313
                                                y: 2.65935
                                                z: -2.3127e-08
                                                rotation: Qt.quaternion(0.997384, 0.0722791, 0, 0)
                                                Node {
                                                    id: mixamorig7_RightHandPinky3
                                                    x: 0.0106292
                                                    y: 2.18159
                                                    z: -7.36124e-08
                                                    rotation: Qt.quaternion(0.996606, -0.0823204, 0, 0)
                                                    scale.y: 1
                                                    scale.z: 1
                                                    Node {
                                                        id: mixamorig7_RightHandPinky4
                                                        x: -0.00516612
                                                        y: 1.92308
                                                        z: 1.86816e-09
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Node {
                id: mixamorig7_LeftUpLeg
                x: 8.72632
                y: -5.39318
                z: -0.445403
                rotation: Qt.quaternion(-0.0392111, -0.00107395, -0.0273578, 0.998856)
                Node {
                    id: mixamorig7_LeftLeg
                    x: 1.01839e-07
                    y: 41.0574
                    z: -7.25783e-09
                    rotation: Qt.quaternion(0.99969, -0.0244066, 0.00012181, -0.00498932)
                    Node {
                        id: mixamorig7_LeftFoot
                        x: 5.6663e-08
                        y: 42.037
                        z: -5.30882e-08
                        rotation: Qt.quaternion(0.844113, 0.534502, -0.0356546, 0.0225769)
                        Node {
                            id: mixamorig7_LeftToeBase
                            x: 3.49683e-08
                            y: 18.6814
                            z: -7.82638e-07
                            rotation: Qt.quaternion(0.951103, 0.305051, -0.0461299, 0.0147954)
                            scale.y: 1
                            scale.z: 1
                            Node {
                                id: mixamorig7_LeftToe_End
                                x: -2.97611e-08
                                y: 7.07829
                                z: 1.41572e-08
                            }
                        }
                    }
                }
            }
            Node {
                id: mixamorig7_RightUpLeg
                x: -8.72632
                y: -5.39318
                z: -0.458879
                rotation: Qt.quaternion(0.0392147, 0.00104678, -0.0266636, 0.998874)
                scale.x: 1
                scale.z: 1
                Node {
                    id: mixamorig7_RightLeg
                    x: -2.50778e-08
                    y: 41.0543
                    z: -3.95679e-08
                    rotation: Qt.quaternion(0.999837, -0.017347, -8.60958e-05, 0.00496235)
                    scale.x: 1
                    scale.y: 1
                    Node {
                        id: mixamorig7_RightFoot
                        x: -2.28518e-08
                        y: 41.9747
                        z: 1.2e-08
                        rotation: Qt.quaternion(0.852284, 0.521239, 0.0373986, -0.0228722)
                        scale.x: 1
                        scale.y: 1
                        Node {
                            id: mixamorig7_RightToeBase
                            x: -8.24308e-08
                            y: 18.2105
                            z: 5.34203e-08
                            rotation: Qt.quaternion(0.949024, 0.312172, 0.041418, -0.013624)
                            scale.z: 1
                            Node {
                                id: mixamorig7_RightToe_End
                                x: 4.15861e-08
                                y: 7.13203
                                z: 7.98815e-09
                            }
                        }
                    }
                }
            }
        }
        Model {
            id: ch33_Shoes
            source: "meshes/ch33_Shoes.mesh"
           skin: Skin {
                joints: [
                    mixamorig7_LeftLeg,
                    mixamorig7_LeftFoot,
                    mixamorig7_LeftToeBase,
                    mixamorig7_LeftToe_End,
                    mixamorig7_RightLeg,
                    mixamorig7_RightFoot,
                    mixamorig7_RightToeBase,
                    mixamorig7_RightToe_End
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(-0.997655, -0.0683338, -0.00374602, 15.559, 0.0683549, -0.992302, -0.10327, 52.0669, 0.00333965, -0.103284, 0.994646, 5.5903, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.99382, -0.0768001, 0.0801437, 15.975, 0.108288, -0.512128, 0.852056, 8.13813, -0.0243941, 0.855469, 0.51728, -7.24585, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -13.6703, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -20.7486, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.997651, 0.0684, 0.0036543, -15.5627, -0.0684564, -0.99378, -0.0878317, 52.1502, -0.00237613, -0.0878756, 0.996128, 4.7373, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.993609, 0.0758343, -0.0836128, -15.9178, -0.111085, -0.525332, 0.843615, 7.62312, 0.0200505, 0.847511, 0.530398, -7.52935, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -13.7959, 0.01236, 0.996599, -0.0814687, -0.866837, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -20.928, 0.01236, 0.996599, -0.0814687, -0.866838, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Suit
            source: "meshes/ch33_Suit.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Hips,
                    mixamorig7_Spine,
                    mixamorig7_Spine1,
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_LeftShoulder,
                    mixamorig7_LeftArm,
                    mixamorig7_LeftForeArm,
                    mixamorig7_LeftHand,
                    mixamorig7_LeftHandThumb1,
                    mixamorig7_LeftHandThumb2,
                    mixamorig7_LeftHandThumb3,
                    mixamorig7_LeftHandIndex1,
                    mixamorig7_LeftHandMiddle1,
                    mixamorig7_LeftHandPinky1,
                    mixamorig7_RightShoulder,
                    mixamorig7_RightArm,
                    mixamorig7_RightForeArm,
                    mixamorig7_RightHand,
                    mixamorig7_RightHandThumb1,
                    mixamorig7_RightHandThumb2,
                    mixamorig7_RightHandThumb3,
                    mixamorig7_RightHandIndex1,
                    mixamorig7_RightHandMiddle1,
                    mixamorig7_RightHandPinky1,
                    mixamorig7_LeftUpLeg,
                    mixamorig7_RightUpLeg
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -99.5695, 0, 0, 1, -2.5607, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113729, -108.39, 0, 0.113729, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -119.774, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0607661, -0.104229, -0.992695, 13.2767, 0.997047, -0.0531167, -0.0554555, -12.7725, -0.0469486, -0.993134, 0.107149, 143.087, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0458808, -0.109298, -0.99295, 8.92547, 0.998179, 0.0439863, 0.0412806, -53.4595, 0.0391643, -0.993035, 0.111117, 138.999, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0951449, 0.0960711, -0.990817, -23.654, 0.992799, -0.0819284, 0.0873913, -55.9038, -0.0727803, -0.991997, -0.103174, 145.751, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -49.057, 0.745176, -0.377662, 0.549623, -0.159443, -0.279163, -0.925154, -0.257213, 149.808, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -48.5964, 0.692232, -0.517953, 0.502534, 19.4565, -0.392471, -0.854554, -0.340152, 148.595, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -48.6988, 0.773583, -0.262409, 0.576812, -25.5587, -0.186516, -0.964199, -0.188499, 147.253, 0, 0, 0, 1),
                    Qt.matrix4x4(0.205916, 0.0862741, -0.974759, -27.4834, 0.974161, -0.112522, 0.19583, -61.2967, -0.0927872, -0.989897, -0.107215, 146.886, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0839598, 0.0969876, -0.991738, -21.8161, 0.990602, -0.115968, 0.0725224, -62.1072, -0.107976, -0.988506, -0.105813, 148.291, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0486293, 0.0997961, -0.993819, -23.9619, 0.985165, -0.168736, 0.031262, -53.5837, -0.164573, -0.980596, -0.106521, 151.292, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0524937, 0.109663, 0.992582, -13.6317, -0.997486, -0.0531399, -0.046882, -12.7655, 0.0476045, -0.992547, 0.112176, 143.06, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0472349, 0.114415, 0.99231, -9.56674, -0.998131, 0.0439843, 0.0424405, -53.451, -0.0387902, -0.992459, 0.116279, 138.961, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0988426, -0.102603, 0.989799, 24.829, -0.992423, -0.0831194, 0.0904884, -55.698, 0.0729871, -0.991244, -0.110042, 145.634, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 49.1059, -0.751168, -0.392537, 0.530718, 1.32975, 0.291527, -0.9186, -0.266806, 149.688, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 48.5416, -0.716559, -0.486457, 0.499904, 12.9738, 0.36849, -0.872509, -0.320848, 149.149, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 48.689, -0.732088, -0.44757, 0.513545, 3.03738, 0.336583, -0.893081, -0.298527, 149.428, 0, 0, 0, 1),
                    Qt.matrix4x4(0.168916, -0.0964556, 0.980899, 25.8664, -0.979111, -0.130699, 0.155756, -59.2238, 0.113179, -0.986719, -0.116518, 148.102, 0, 0, 0, 1),
                    Qt.matrix4x4(0.075877, -0.104497, 0.991626, 22.2249, -0.993689, -0.0903253, 0.0665164, -66.0549, 0.0826181, -0.990415, -0.110691, 146.471, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0314652, -0.107992, 0.993654, 23.7868, -0.978086, -0.208033, 0.00836287, -47.5788, 0.205809, -0.972142, -0.112172, 153.444, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996923, -0.0782736, -0.00429091, 16.0801, 0.0783911, -0.995428, -0.0545687, 93.1771, 0, -0.0547372, 0.998501, 3.04281, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996922, 0.0782853, 0.00418242, -16.0809, -0.078397, -0.995503, -0.0531851, 93.1804, 0, -0.0533493, 0.998576, 2.9254, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Belt
            source: "meshes/ch33_Belt.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Hips,
                    mixamorig7_Spine,
                    mixamorig7_Spine1,
                    mixamorig7_LeftUpLeg,
                    mixamorig7_RightUpLeg
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -99.5695, 0, 0, 1, -2.5607, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113729, -108.39, 0, 0.113729, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -119.774, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996923, -0.0782736, -0.00429091, 16.0801, 0.0783911, -0.995428, -0.0545687, 93.1771, 0, -0.0547372, 0.998501, 3.04281, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996922, 0.0782853, 0.00418242, -16.0809, -0.078397, -0.995503, -0.0531851, 93.1804, 0, -0.0533493, 0.998576, 2.9254, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Shirt
            source: "meshes/ch33_Shirt.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Hips,
                    mixamorig7_Spine,
                    mixamorig7_Spine1,
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_LeftShoulder,
                    mixamorig7_LeftArm,
                    mixamorig7_RightShoulder,
                    mixamorig7_RightArm,
                    mixamorig7_LeftUpLeg,
                    mixamorig7_RightUpLeg
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -99.5695, 0, 0, 1, -2.5607, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113729, -108.39, 0, 0.113729, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -119.774, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0607661, -0.104229, -0.992695, 13.2767, 0.997047, -0.0531167, -0.0554555, -12.7725, -0.0469486, -0.993134, 0.107149, 143.087, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0524937, 0.109663, 0.992582, -13.6317, -0.997486, -0.0531399, -0.046882, -12.7655, 0.0476045, -0.992547, 0.112176, 143.06, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996923, -0.0782736, -0.00429091, 16.0801, 0.0783911, -0.995428, -0.0545687, 93.1771, 0, -0.0547372, 0.998501, 3.04281, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996922, 0.0782853, 0.00418242, -16.0809, -0.078397, -0.995503, -0.0531851, 93.1804, 0, -0.0533493, 0.998576, 2.9254, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Tie
            source: "meshes/ch33_Tie.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Hips,
                    mixamorig7_Spine,
                    mixamorig7_Spine1,
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_LeftShoulder,
                    mixamorig7_RightShoulder
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -99.5695, 0, 0, 1, -2.5607, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113729, -108.39, 0, 0.113729, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -119.774, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Pants
            source: "meshes/ch33_Pants.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Hips,
                    mixamorig7_Spine,
                    mixamorig7_Spine1,
                    mixamorig7_LeftUpLeg,
                    mixamorig7_LeftLeg,
                    mixamorig7_LeftFoot,
                    mixamorig7_LeftToeBase,
                    mixamorig7_LeftToe_End,
                    mixamorig7_RightUpLeg,
                    mixamorig7_RightLeg,
                    mixamorig7_RightFoot,
                    mixamorig7_RightToeBase,
                    mixamorig7_RightToe_End
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 0, -99.5695, 0, 0, 1, -2.5607, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113729, -108.39, 0, 0.113729, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -119.774, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996923, -0.0782736, -0.00429091, 16.0801, 0.0783911, -0.995428, -0.0545687, 93.1771, 0, -0.0547372, 0.998501, 3.04281, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.997655, -0.0683338, -0.00374602, 15.559, 0.0683549, -0.992302, -0.10327, 52.0669, 0.00333965, -0.103284, 0.994646, 5.5903, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.99382, -0.0768001, 0.0801437, 15.975, 0.108288, -0.512128, 0.852056, 8.13813, -0.0243941, 0.855469, 0.51728, -7.24585, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -13.6703, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -20.7486, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.996922, 0.0782853, 0.00418242, -16.0809, -0.078397, -0.995503, -0.0531851, 93.1804, 0, -0.0533493, 0.998576, 2.9254, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.997651, 0.0684, 0.0036543, -15.5627, -0.0684564, -0.99378, -0.0878317, 52.1502, -0.00237613, -0.0878756, 0.996128, 4.7373, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.993609, 0.0758343, -0.0836128, -15.9178, -0.111085, -0.525332, 0.843615, 7.62312, 0.0200505, 0.847511, 0.530398, -7.52935, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -13.7959, 0.01236, 0.996599, -0.0814687, -0.866837, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -20.928, 0.01236, 0.996599, -0.0814687, -0.866838, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Body
            source: "meshes/ch33_Body.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_HeadTop_End,
                    mixamorig7_LeftShoulder,
                    mixamorig7_LeftForeArm,
                    mixamorig7_LeftHand,
                    mixamorig7_LeftHandThumb1,
                    mixamorig7_LeftHandThumb2,
                    mixamorig7_LeftHandThumb3,
                    mixamorig7_LeftHandThumb4,
                    mixamorig7_LeftHandIndex1,
                    mixamorig7_LeftHandIndex2,
                    mixamorig7_LeftHandIndex3,
                    mixamorig7_LeftHandIndex4,
                    mixamorig7_LeftHandMiddle1,
                    mixamorig7_LeftHandMiddle2,
                    mixamorig7_LeftHandMiddle3,
                    mixamorig7_LeftHandMiddle4,
                    mixamorig7_LeftHandRing1,
                    mixamorig7_LeftHandRing2,
                    mixamorig7_LeftHandRing3,
                    mixamorig7_LeftHandRing4,
                    mixamorig7_LeftHandPinky1,
                    mixamorig7_LeftHandPinky2,
                    mixamorig7_LeftHandPinky3,
                    mixamorig7_LeftHandPinky4,
                    mixamorig7_RightShoulder,
                    mixamorig7_RightForeArm,
                    mixamorig7_RightHand,
                    mixamorig7_RightHandThumb1,
                    mixamorig7_RightHandThumb2,
                    mixamorig7_RightHandThumb3,
                    mixamorig7_RightHandThumb4,
                    mixamorig7_RightHandIndex1,
                    mixamorig7_RightHandIndex2,
                    mixamorig7_RightHandIndex3,
                    mixamorig7_RightHandIndex4,
                    mixamorig7_RightHandMiddle1,
                    mixamorig7_RightHandMiddle2,
                    mixamorig7_RightHandMiddle3,
                    mixamorig7_RightHandMiddle4,
                    mixamorig7_RightHandRing1,
                    mixamorig7_RightHandRing2,
                    mixamorig7_RightHandRing3,
                    mixamorig7_RightHandRing4,
                    mixamorig7_RightHandPinky1,
                    mixamorig7_RightHandPinky2,
                    mixamorig7_RightHandPinky3,
                    mixamorig7_RightHandPinky4,
                    mixamorig7_LeftLeg,
                    mixamorig7_LeftFoot,
                    mixamorig7_LeftToeBase,
                    mixamorig7_LeftToe_End,
                    mixamorig7_RightLeg,
                    mixamorig7_RightFoot,
                    mixamorig7_RightToeBase,
                    mixamorig7_RightToe_End
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -177.775, 0, -2.77556e-17, 1, -5.50058, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0458808, -0.109298, -0.99295, 8.92547, 0.998179, 0.0439863, 0.0412806, -53.4595, 0.0391643, -0.993035, 0.111117, 138.999, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0951449, 0.0960711, -0.990817, -23.654, 0.992799, -0.0819284, 0.0873913, -55.9038, -0.0727803, -0.991997, -0.103174, 145.751, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -49.057, 0.745176, -0.377662, 0.549623, -0.159443, -0.279163, -0.925154, -0.257213, 149.808, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -48.5964, 0.692232, -0.517953, 0.502534, 19.4565, -0.392471, -0.854554, -0.340152, 148.595, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -48.6988, 0.773583, -0.262409, 0.576812, -25.5587, -0.186516, -0.964199, -0.188499, 147.253, 0, 0, 0, 1),
                    Qt.matrix4x4(0.605625, 0.0382347, -0.794831, -49.057, 0.773583, -0.262409, 0.576812, -28.1933, -0.186516, -0.964199, -0.188499, 147.253, 0, 0, 0, 1),
                    Qt.matrix4x4(0.205916, 0.0862741, -0.974759, -27.4834, 0.974161, -0.112522, 0.19583, -61.2967, -0.0927872, -0.989897, -0.107215, 146.886, 0, 0, 0, 1),
                    Qt.matrix4x4(0.205916, 0.0862741, -0.974759, -27.4979, 0.95123, -0.251461, 0.178689, -43.0935, -0.229697, -0.964015, -0.133846, 154.539, 0, 0, 0, 1),
                    Qt.matrix4x4(0.205916, 0.0862741, -0.974759, -27.4814, 0.967794, -0.165372, 0.189808, -59.6502, -0.144822, -0.982451, -0.117548, 149.858, 0, 0, 0, 1),
                    Qt.matrix4x4(0.205916, 0.0862741, -0.974759, -27.4834, 0.967794, -0.165372, 0.189808, -62.3605, -0.144822, -0.982451, -0.117548, 149.858, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0839598, 0.0969876, -0.991738, -21.8161, 0.990602, -0.115968, 0.0725224, -62.1072, -0.107976, -0.988506, -0.105813, 148.291, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0839598, 0.0969876, -0.991738, -21.8314, 0.962457, -0.265699, 0.0554967, -42.1358, -0.258121, -0.959165, -0.115654, 156.571, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0839598, 0.0969876, -0.991738, -21.8197, 0.973122, -0.222159, 0.0606576, -52.4928, -0.21444, -0.970175, -0.113033, 154.36, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0839598, 0.0969876, -0.991738, -21.8161, 0.973122, -0.222159, 0.0606576, -55.4864, -0.21444, -0.970175, -0.113033, 154.36, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0369323, 0.100697, -0.994232, -20.8854, 0.971235, -0.237823, 0.0119911, -43.7484, -0.235243, -0.966075, -0.106584, 155.295, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0369323, 0.100697, -0.994231, -20.8817, 0.960528, -0.278082, 0.00751585, -40.0942, -0.275721, -0.955265, -0.106993, 157.113, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0369323, 0.100697, -0.994231, -20.8731, 0.995467, -0.0909667, 0.027765, -71.9523, -0.0876461, -0.99075, -0.1036, 146.079, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0369323, 0.100697, -0.994231, -20.8854, 0.995467, -0.0909667, 0.027765, -74.2593, -0.0876461, -0.99075, -0.1036, 146.079, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0486293, 0.0997961, -0.993819, -23.9619, 0.985165, -0.168736, 0.031262, -53.5837, -0.164573, -0.980596, -0.106521, 151.292, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0486293, 0.0997961, -0.993819, -23.9758, 0.941122, -0.337849, 0.0121251, -28.8685, -0.334551, -0.935895, -0.11035, 158.802, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0486293, 0.0997961, -0.993819, -23.9675, 0.951972, -0.305772, 0.0158771, -36.4797, -0.302297, -0.94686, -0.109873, 157.65, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0486293, 0.0997961, -0.993819, -23.9619, 0.951972, -0.305772, 0.0158771, -38.3352, -0.302297, -0.94686, -0.109873, 157.65, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0472349, 0.114415, 0.99231, -9.56674, -0.998131, 0.0439843, 0.0424405, -53.451, -0.0387902, -0.992459, 0.116279, 138.961, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0988426, -0.102603, 0.989799, 24.829, -0.992423, -0.0831194, 0.0904884, -55.698, 0.0729871, -0.991244, -0.110042, 145.634, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 49.1059, -0.751168, -0.392537, 0.530718, 1.32975, 0.291527, -0.9186, -0.266806, 149.688, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 48.5416, -0.716559, -0.486457, 0.499904, 12.9738, 0.36849, -0.872509, -0.320848, 149.149, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 48.689, -0.732088, -0.44757, 0.513545, 3.03738, 0.336583, -0.893081, -0.298527, 149.428, 0, 0, 0, 1),
                    Qt.matrix4x4(0.592249, -0.0456974, 0.804458, 49.1059, -0.732088, -0.44757, 0.513545, 0.444057, 0.336583, -0.893081, -0.298527, 149.428, 0, 0, 0, 1),
                    Qt.matrix4x4(0.168916, -0.0964556, 0.980899, 25.8664, -0.979111, -0.130699, 0.155756, -59.2238, 0.113179, -0.986719, -0.116518, 148.102, 0, 0, 0, 1),
                    Qt.matrix4x4(0.168916, -0.0964556, 0.980899, 25.8882, -0.960201, -0.240706, 0.141683, -45.4229, 0.222442, -0.965793, -0.133276, 154.18, 0, 0, 0, 1),
                    Qt.matrix4x4(0.168916, -0.0964556, 0.980899, 25.8856, -0.933775, -0.33421, 0.127937, -33.086, 0.315487, -0.93755, -0.146521, 158.184, 0, 0, 0, 1),
                    Qt.matrix4x4(0.168916, -0.0964556, 0.980899, 25.8664, -0.933775, -0.33421, 0.127937, -35.6633, 0.315487, -0.93755, -0.146521, 158.184, 0, 0, 0, 1),
                    Qt.matrix4x4(0.075877, -0.104497, 0.991626, 22.2249, -0.993689, -0.0903253, 0.0665164, -66.0549, 0.0826181, -0.990415, -0.110691, 146.471, 0, 0, 0, 1),
                    Qt.matrix4x4(0.075877, -0.104497, 0.991627, 22.244, -0.960708, -0.273948, 0.0446427, -40.95, 0.266989, -0.956051, -0.121178, 156.897, 0, 0, 0, 1),
                    Qt.matrix4x4(0.075877, -0.104497, 0.991626, 22.2286, -0.975671, -0.21293, 0.0522178, -54.0846, 0.20569, -0.971463, -0.118111, 153.784, 0, 0, 0, 1),
                    Qt.matrix4x4(0.075877, -0.104497, 0.991626, 22.2249, -0.975671, -0.21293, 0.0522178, -56.9732, 0.20569, -0.971463, -0.118111, 153.784, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0337165, -0.10782, 0.993599, 21.6066, -0.979931, -0.198999, 0.0116583, -49.9, 0.196468, -0.974051, -0.112366, 153.199, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0337165, -0.10782, 0.993599, 21.611, -0.960738, -0.277445, 0.00249453, -40.1624, 0.2754, -0.954672, -0.112942, 156.979, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0337165, -0.10782, 0.993598, 21.6046, -0.977242, -0.211882, 0.0101691, -53.4773, 0.209429, -0.971329, -0.112511, 153.698, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0337165, -0.10782, 0.993598, 21.6066, -0.977242, -0.211882, 0.0101691, -55.8126, 0.209429, -0.971329, -0.112511, 153.698, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0314652, -0.107992, 0.993654, 23.7868, -0.978086, -0.208033, 0.00836287, -47.5788, 0.205809, -0.972142, -0.112172, 153.444, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0314652, -0.107992, 0.993654, 23.7923, -0.938193, -0.346023, -0.00789742, -27.5897, 0.34468, -0.93199, -0.112205, 159.084, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0314652, -0.107992, 0.993654, 23.7817, -0.982033, -0.18841, 0.0106205, -55.4706, 0.186067, -0.976135, -0.11198, 152.043, 0, 0, 0, 1),
                    Qt.matrix4x4(0.0314652, -0.107992, 0.993654, 23.7868, -0.982033, -0.18841, 0.0106205, -57.3937, 0.186067, -0.976135, -0.11198, 152.043, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.997655, -0.0683338, -0.00374602, 15.559, 0.0683549, -0.992302, -0.10327, 52.0669, 0.00333965, -0.103284, 0.994646, 5.5903, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.99382, -0.0768001, 0.0801437, 15.975, 0.108288, -0.512128, 0.852056, 8.13813, -0.0243941, 0.855469, 0.51728, -7.24585, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -13.6703, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991516, 0.00634863, 0.129827, 15.1988, 0.129905, 0.0829673, 0.988049, -20.7486, -0.00449868, 0.996532, -0.0830881, -0.991717, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.997651, 0.0684, 0.0036543, -15.5627, -0.0684564, -0.99378, -0.0878317, 52.1502, -0.00237613, -0.0878756, 0.996128, 4.7373, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.993609, 0.0758343, -0.0836128, -15.9178, -0.111085, -0.525332, 0.843615, 7.62312, 0.0200505, 0.847511, 0.530398, -7.52935, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -13.7959, 0.01236, 0.996599, -0.0814687, -0.866837, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.991578, 0.00171124, -0.129503, -15.2013, -0.128923, 0.0823831, 0.988227, -20.928, 0.01236, 0.996599, -0.0814687, -0.866838, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_body_material
            ]
        }
        Model {
            id: ch33_Eyelashes
            source: "meshes/ch33_Eyelashes.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_HeadTop_End,
                    mixamorig7_LeftShoulder,
                    mixamorig7_RightShoulder
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -177.775, 0, -2.77556e-17, 1, -5.50058, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_hair_material
            ]
        }
        Model {
            id: ch33_Hair
            source: "meshes/ch33_Hair.mesh"
            skin: Skin {
                joints: [
                    mixamorig7_Spine2,
                    mixamorig7_Neck,
                    mixamorig7_Head,
                    mixamorig7_HeadTop_End,
                    mixamorig7_LeftShoulder,
                    mixamorig7_RightShoulder
                ]
                inverseBindPoses: [
                    Qt.matrix4x4(1, 0, 0, 0, 0, 0.993512, -0.113728, -132.784, 0, 0.113728, 0.993512, -13.868, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -148.042, 0, -2.77556e-17, 1, 2.98796, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -154.986, 0, -2.77556e-17, 1, 1.00548, 0, 0, 0, 1),
                    Qt.matrix4x4(1, 0, 0, 0, 0, 1, 2.77556e-17, -177.775, 0, -2.77556e-17, 1, -5.50058, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0229544, -0.114001, -0.993216, 13.9047, 0.968737, -0.248017, 0.00607858, 29.8269, -0.247027, -0.962025, 0.11613, 142.723, 0, 0, 0, 1),
                    Qt.matrix4x4(-0.0354292, 0.114051, 0.992843, -13.9119, -0.968737, -0.248017, -0.00607859, 29.7906, 0.245549, -0.962019, 0.119272, 142.732, 0, 0, 0, 1)
                ]
            }
            materials: [
                ch33_hair_material
            ]
        }
    }

    Timeline {
        id: timeline0
        startFrame: 0
        endFrame: 1267
        currentFrame: 0
        enabled: true
        animations: [
            TimelineAnimation {
                duration: 1267
                from: 0
                to: 1267
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: mixamorig7_Spine2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Spine2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Spine2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightForeArm
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightForeArm_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightForeArm
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandIndex1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandRing1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_Hips
            property: "position"
            keyframeSource: "animations/mixamorig7_Hips_position.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Hips
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Hips_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Hips
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandIndex2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandRing2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_Spine
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Spine_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Spine
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandIndex3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightArm
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightArm_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightArm
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftArm
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftArm_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftArm
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandRing3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandThumb2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightLeg
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightLeg_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightLeg
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandIndex2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandRing2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandRing2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_Neck
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Neck_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Neck
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandMiddle2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandPinky1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandPinky1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightUpLeg
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightUpLeg_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightUpLeg
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandIndex3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandIndex3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandIndex1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandIndex1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftForeArm
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftForeArm_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftForeArm
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandRing1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandThumb1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftToeBase
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftToeBase_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftToeBase
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightFoot
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightFoot_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightFoot
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHand
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHand_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHand
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandMiddle3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_Spine1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Spine1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Spine1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftShoulder
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftShoulder_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftShoulder
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHand
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHand_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHand
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandPinky3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandThumb1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandPinky3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftFoot
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftFoot_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftFoot
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandMiddle2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandMiddle1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftUpLeg
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftUpLeg_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftUpLeg
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandRing3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandRing3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandThumb2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightShoulder
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightShoulder_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightShoulder
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandThumb3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandThumb3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandMiddle3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandMiddle3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle1
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandMiddle1_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandMiddle1
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_Head
            property: "rotation"
            keyframeSource: "animations/mixamorig7_Head_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_Head
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb3
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandThumb3_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandThumb3
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftLeg
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftLeg_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftLeg
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightToeBase
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightToeBase_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightToeBase
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_RightHandPinky2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_RightHandPinky2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky2
            property: "rotation"
            keyframeSource: "animations/mixamorig7_LeftHandPinky2_rotation.qad"
        }

        KeyframeGroup {
            target: mixamorig7_LeftHandPinky2
            property: "scale"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1, 1, 1)
            }
        }
    }
}
