.class public Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;
.super Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;
.source "FlexibleKeyDummyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 18
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;->setSelectable(Z)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 16
    check-cast p2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;--->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;ILjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 35
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$1;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;--->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLayoutRes()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0091

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;--->getLayoutRes()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
