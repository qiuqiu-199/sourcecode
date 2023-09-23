.class public final Leu/davidea/flexibleadapter/utils/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public static getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string p0, "IDLE"

    return-object p0

    :pswitch_0
    const-string p0, "MULTI"

    return-object p0

    :pswitch_1
    const-string p0, "SINGLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOrientation(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .line 71
    new-instance v0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method
