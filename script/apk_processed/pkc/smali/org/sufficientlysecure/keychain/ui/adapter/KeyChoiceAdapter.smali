.class public Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "KeyChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;,
        Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;,
        Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private activeItem:Ljava/lang/Integer;

.field private final keyDisabledPredicate:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

.field private keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

.field private final onKeyClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;ILorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;",
            "I",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;",
            ")V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {v2, v0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    .line 61
    invoke-virtual {v2, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setMode(I)V

    .line 62
    new-instance p1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$$Lambda$0;

    invoke-direct {p1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;)V

    invoke-virtual {v2, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->addListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 63
    invoke-direct {v2, v4, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getKeyChoiceItems(Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 p1, 0x0

    invoke-virtual {v2, v4, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->updateDataSet(Ljava/util/List;Z)V

    .line 64
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    .line 65
    iput-object p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->onKeyClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;

    .line 66
    iput-object p2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->keyDisabledPredicate:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;---><init>(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;ILorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-object p0
.end method

.method public static createMultiChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;",
            ")",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 54
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;ILorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)V

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->createMultiChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSingleChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;",
            ")",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 49
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;ILorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)V

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->createSingleChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSingleClickableAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;",
            ")",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    .line 42
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v9

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;ILorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)V

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->createSingleClickableAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyChoiceItems(Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;",
            ">;"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    .line 75
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    if-eqz v7, :cond_1

    .line 77
    invoke-interface {v7, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;->getDisabledString(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 78
    :goto_1
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    invoke-direct {v4, v5, v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/Integer;)V

    .line 79
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->getKeyChoiceItems(Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Ljava/util/ArrayList;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onClickItem(I)Z
    .locals 8

    move-object/16 v5, p0

    move/16 v6, p1

    .line 85
    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v1

    .line 91
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 92
    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->toggleSelection(I)V

    .line 93
    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->notifyItemChanged(I)V

    return v4

    .line 95
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setActiveItem(Ljava/lang/Integer;)V

    return v4

    .line 100
    :cond_2
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->onKeyClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->access$100(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;->onKeyClick(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return v1

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->onClickItem(I)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getActiveItem()Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 5

    move-object/16 v2, p0

    .line 124
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get active item in single select mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 131
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    if-nez v0, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->access$100(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    :goto_0
    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->getActiveItem()Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 142
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;

    if-nez v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 146
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceItem;->getMasterKeyId()J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSelectionIds()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 164
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get active item in single select mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 170
    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItemId(I)J

    move-result-wide v2

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->getSelectionIds()Ljava/util/Set;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$new$0$KeyChoiceAdapter(Landroid/view/View;I)Z
    .locals 0

    .line 62
    invoke-direct {p0, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->onClickItem(I)Z

    move-result p1

    return p1
.end method

.method public setActiveItem(Ljava/lang/Integer;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 105
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 106
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get active item in single select mode!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->clearSelection()V

    .line 111
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    .line 112
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->notifyItemChanged(I)V

    :cond_1
    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->toggleSelection(I)V

    .line 119
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->notifyItemChanged(I)V

    :cond_2
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->setActiveItem(Ljava/lang/Integer;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSelectionByIds(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 150
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 151
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get active item in single select mode!"

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->clearSelection()V

    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 156
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getItemId(I)J

    move-result-wide v1

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->addSelection(I)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->setSelectionByIds(Ljava/util/Set;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUnifiedKeyInfoItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 136
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->keyDisabledPredicate:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getKeyChoiceItems(Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->updateDataSet(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;--->setUnifiedKeyInfoItems(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
