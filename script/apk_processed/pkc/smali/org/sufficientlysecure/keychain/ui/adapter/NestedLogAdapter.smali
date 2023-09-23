.class public Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NestedLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;,
        Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENTRY_TYPE_REGULAR:I = 0x0

.field private static final ENTRY_TYPE_SUBLOG:I = 0x1

.field private static final LOG_ENTRY_ITEM_INDENT:I = 0x2


# instance fields
.field private final mIndentFactor:I

.field private mListener:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;

.field private mLogEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 51
    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v0, 0x1

    const/high16 v1, 0x41000000    # 8.0f

    .line 53
    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mIndentFactor:I

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 58
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->setLog(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mListener:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;

    return-object p0
.end method


# virtual methods
.method public getFirstSectionPosition(I)I
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 105
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->getFirstSectionPosition(I)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 100
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 90
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 95
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemViewType(I)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 111
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v1

    instance-of v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->getItemViewType(I)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSection(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 116
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->isSection(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 137
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v3

    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mIndentFactor:I

    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    const/4 v0, 0x0

    packed-switch v5, :pswitch_data_0

    const/4 v4, 0x0

    return-object v4

    .line 123
    :pswitch_0
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a8

    .line 124
    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V

    return-object v5

    .line 127
    :pswitch_1
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a7

    .line 128
    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setListener(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 63
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mListener:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->setListener(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLog(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 67
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->toList()Ljava/util/List;

    move-result-object v7

    .line 69
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 77
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 78
    iget v3, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    move v1, v0

    .line 82
    :cond_1
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->mLogEntries:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->notifyDataSetChanged()V

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;--->setLog(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
