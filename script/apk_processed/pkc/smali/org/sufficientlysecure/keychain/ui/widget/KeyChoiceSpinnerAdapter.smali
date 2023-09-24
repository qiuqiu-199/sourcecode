.class Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyChoiceSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private noneItemString:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 29
    invoke-direct {v1}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 32
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 6

    move-object/16 v3, p0

    .line 51
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->getCount()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 66
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 71
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-nez v4, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 77
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    :cond_2
    return-wide v1

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->getItemId(I)J"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemViewType(I)I
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 87
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 90
    :cond_0
    invoke-super {v1, v2}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->getItemViewType(I)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    .line 96
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v4

    .line 101
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0099

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901c1

    .line 102
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(I)V

    return-object v3

    :cond_1
    if-eqz v4, :cond_3

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;

    if-nez v0, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;

    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0095

    invoke-virtual {v4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 112
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;

    invoke-direct {p0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;Landroid/view/View;)V

    .line 113
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_1
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    .line 120
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->isEnabled(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasNoneItem()Z
    .locals 4

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->hasNoneItem()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasStableIds()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->hasStableIds()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSingleEntry()Z
    .locals 5

    move-object/16 v2, p0

    .line 55
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->isSingleEntry()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->data:Ljava/util/List;

    .line 37
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setNoneItemString(Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 41
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->noneItemString:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;--->setNoneItemString(Ljava/lang/Integer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
