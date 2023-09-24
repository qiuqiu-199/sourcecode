.class Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NestedLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogEntryViewHolder"
.end annotation


# instance fields
.field private mLogImg:Landroid/widget/ImageView;

.field private mLogText:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 144
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    .line 145
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f0901ea

    .line 147
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->mLogText:Landroid/widget/TextView;

    const v1, 0x7f0901e5

    .line 148
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->mLogImg:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 153
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v2

    iget-object v3, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 157
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v2

    iget-object v3, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040089

    .line 165
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v2

    .line 168
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$1;->$SwitchMap$org$sufficientlysecure$keychain$operations$results$OperationResult$LogLevel:[I

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, -0x777778

    const v5, 0x7f06001f

    packed-switch v3, :pswitch_data_0

    move v3, v2

    goto :goto_1

    .line 186
    :pswitch_0
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    .line 182
    :pswitch_1
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06001c

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    .line 174
    :pswitch_3
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06001d

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    :pswitch_4
    const v2, -0x777778

    const v3, -0x777778

    .line 191
    :goto_1
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->mLogText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->mLogText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->mLogImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 194
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->itemView:Landroid/view/View;

    iget v7, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    mul-int v7, v7, v8

    invoke-virtual {v0, v7, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;--->bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
