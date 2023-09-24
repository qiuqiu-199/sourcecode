.class public Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;
.super Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;
.source "KeyChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyChoiceItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private disabledStringRes:Ljava/lang/Integer;

.field private keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 181
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-direct {v0}, Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;-><init>()V

    .line 182
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 183
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->disabledStringRes:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->setSelectable(Z)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/Integer;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Ljava/lang/Integer;
    .locals 0

    .line 176
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->disabledStringRes:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 0

    .line 176
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 176
    check-cast p2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 200
    invoke-virtual {v2, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result p0

    .line 201
    iget-object p1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->disabledStringRes:Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    :goto_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v2

    invoke-virtual {v3, v0, v2, p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;IZZ)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;ILjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 194
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-direct {v0, v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 207
    instance-of v0, v5, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    if-eqz v0, :cond_0

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 208
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLayoutRes()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c008d

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->getLayoutRes()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 218
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 213
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
