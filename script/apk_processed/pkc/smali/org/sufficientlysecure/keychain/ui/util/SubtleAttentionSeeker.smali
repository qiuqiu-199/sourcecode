.class public Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;
.super Ljava/lang/Object;
.source "SubtleAttentionSeeker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static tada(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 4

    move-object/16 v1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;->tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;--->tada(Landroid/view/View;)Landroid/animation/ObjectAnimator;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/16 v0, 0x578

    .line 39
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;->tada(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;--->tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static tada(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 23

    move-object/16 v20, p0

    move/16 v21, p1

    move/16 v22, p2

    .line 44
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v2, 0xb

    new-array v3, v2, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 45
    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const v6, 0x3dcccccd    # 0.1f

    const v8, 0x3f666666    # 0.9f

    .line 46
    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v3, v10

    const v9, 0x3e4ccccd    # 0.2f

    .line 47
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v3, v12

    const v11, 0x3e99999a    # 0.3f

    const v13, 0x3f8ccccd    # 1.1f

    .line 48
    invoke-static {v11, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v3, v15

    const v14, 0x3ecccccd    # 0.4f

    .line 49
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v3, v17

    const/high16 v14, 0x3f000000    # 0.5f

    .line 50
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v16, 0x5

    aput-object v14, v3, v16

    const v14, 0x3f19999a    # 0.6f

    .line 51
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v18, 0x6

    aput-object v14, v3, v18

    const v14, 0x3f333333    # 0.7f

    .line 52
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v18, 0x7

    aput-object v14, v3, v18

    const v14, 0x3f4ccccd    # 0.8f

    .line 53
    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v18, 0x8

    aput-object v14, v3, v18

    .line 54
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v18, 0x9

    aput-object v14, v3, v18

    .line 55
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v18, 0xa

    aput-object v14, v3, v18

    .line 44
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 58
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v2, [Landroid/animation/Keyframe;

    .line 59
    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    aput-object v18, v14, v7

    .line 60
    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    aput-object v18, v14, v10

    .line 61
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    aput-object v18, v14, v12

    .line 62
    invoke-static {v11, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    aput-object v18, v14, v15

    const v15, 0x3ecccccd    # 0.4f

    .line 63
    invoke-static {v15, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    aput-object v18, v14, v17

    const/high16 v15, 0x3f000000    # 0.5f

    .line 64
    invoke-static {v15, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    aput-object v15, v14, v16

    const v15, 0x3f19999a    # 0.6f

    .line 65
    invoke-static {v15, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    const/16 v18, 0x6

    aput-object v15, v14, v18

    const v15, 0x3f333333    # 0.7f

    .line 66
    invoke-static {v15, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    const/16 v18, 0x7

    aput-object v15, v14, v18

    const v15, 0x3f4ccccd    # 0.8f

    .line 67
    invoke-static {v15, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    const/16 v18, 0x8

    aput-object v15, v14, v18

    .line 68
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/16 v15, 0x9

    aput-object v13, v14, v15

    .line 69
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/16 v15, 0xa

    aput-object v13, v14, v15

    .line 58
    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 72
    sget-object v13, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [Landroid/animation/Keyframe;

    .line 73
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    aput-object v14, v2, v7

    const/high16 v14, -0x3fc00000    # -3.0f

    mul-float v14, v14, v21

    .line 74
    invoke-static {v6, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v2, v10

    .line 75
    invoke-static {v9, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v2, v12

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v0, v21, v6

    .line 76
    invoke-static {v11, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v2, v9

    const v6, 0x3ecccccd    # 0.4f

    .line 77
    invoke-static {v6, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v2, v17

    const/high16 v6, 0x3f000000    # 0.5f

    .line 78
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v2, v16

    const v6, 0x3f19999a    # 0.6f

    .line 79
    invoke-static {v6, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v9, 0x6

    aput-object v6, v2, v9

    const v6, 0x3f333333    # 0.7f

    .line 80
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v9, 0x7

    aput-object v6, v2, v9

    const v6, 0x3f4ccccd    # 0.8f

    .line 81
    invoke-static {v6, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/16 v9, 0x8

    aput-object v6, v2, v9

    .line 82
    invoke-static {v8, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/16 v6, 0x9

    aput-object v0, v2, v6

    .line 83
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v2, v4

    .line 72
    invoke-static {v13, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x3

    .line 86
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v7

    aput-object v3, v2, v10

    aput-object v0, v2, v12

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move/from16 v1, v22

    int-to-long v1, v1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;--->tada(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static tintBackground(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    const-string v0, "backgroundColor"

    const/4 v1, 0x3

    .line 92
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v0, v3

    .line 93
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    :array_0
    .array-data 4
        0xff0000
        0x33ff0000
        0xff0000
    .end array-data

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;--->tintBackground(Landroid/view/View;I)Landroid/animation/ObjectAnimator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static tintText(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    const-string v0, "backgroundColor"

    const/4 v1, 0x3

    .line 98
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v0, v3

    .line 99
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    :array_0
    .array-data 4
        0xff7f00
        0x33ff7f00
        0xff7f00
    .end array-data

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;--->tintText(Landroid/view/View;I)Landroid/animation/ObjectAnimator;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
