.class public abstract Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;
.super Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;
.source "FlexibleKeyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem<",
        "TVH;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
