.class public Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;
.super Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;
.source "FlexibleKeyHeader.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/IHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;",
        ">;",
        "Leu/davidea/flexibleadapter/items/IHeader<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final sectionTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 23
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;-><init>()V

    .line 24
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->sectionTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->setEnabled(Z)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 18
    check-cast p2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;",
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

    .line 54
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;->text1:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;--->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;ILjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 48
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;--->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 30
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    if-eqz v0, :cond_0

    .line 31
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    .line 32
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->sectionTitle:Ljava/lang/String;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLayoutRes()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0094

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;--->getLayoutRes()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->sectionTitle:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;--->getSectionTitle()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
