.class public Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;
.super Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;
.source "FlexibleKeyDetailsItem.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/IFilterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;",
        ">;",
        "Leu/davidea/flexibleadapter/items/IFilterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 28
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V

    .line 29
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->setSelectable(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;---><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;",
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

    .line 47
    const-class p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    iget-object p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2, p0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/String;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;ILjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 53
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    check-cast v7, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    .line 56
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    iget-object v7, v7, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v4

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic filter(Ljava/io/Serializable;)Z
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->filter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public filter(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-eqz v2, :cond_1

    .line 69
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->uidSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->filter(Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLayoutRes()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0095

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->getLayoutRes()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 63
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
