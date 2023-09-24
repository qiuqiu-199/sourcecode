.class public Lorg/sufficientlysecure/keychain/util/OrientationUtils;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/OrientationUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static lockCurrentOrientation(Landroid/app/Activity;)V
    .locals 7

    move-object/16 v4, p0

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "window"

    .line 40
    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 42
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x9

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 63
    :goto_2
    invoke-virtual {v4, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/OrientationUtils;--->lockCurrentOrientation(Landroid/app/Activity;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
