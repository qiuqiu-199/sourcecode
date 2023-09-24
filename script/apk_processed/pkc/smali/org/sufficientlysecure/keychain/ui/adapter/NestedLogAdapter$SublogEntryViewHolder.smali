.class Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;
.super Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;
.source "NestedLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SublogEntryViewHolder"
.end annotation


# instance fields
.field private mSublogImg:Landroid/widget/ImageView;

.field private mSublogText:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 202
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    .line 203
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 206
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901e8

    .line 208
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->mSublogText:Landroid/widget/TextView;

    const v1, 0x7f0901e7

    .line 209
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->mSublogImg:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 214
    invoke-super {v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogEntryViewHolder;->bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;--->bind(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    check-cast v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    .line 217
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v4

    .line 220
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    array-length v5, v5

    if-lez v5, :cond_0

    iget-object v5, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v5, v5, v0

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 224
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 224
    invoke-virtual {v5, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 227
    :cond_0
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 232
    :goto_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040089

    .line 232
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    .line 235
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$1;->$SwitchMap$org$sufficientlysecure$keychain$operations$results$OperationResult$LogLevel:[I

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ordinal()I

    move-result v4

    aget v4, v1, v4

    const v1, -0x777778

    const v2, 0x7f06001f

    packed-switch v4, :pswitch_data_0

    move v4, v0

    goto :goto_1

    .line 253
    :pswitch_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 249
    :pswitch_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v1, 0x7f06001c

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 245
    :pswitch_2
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 241
    :pswitch_3
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v1, 0x7f06001d

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    :pswitch_4
    const v4, -0x777778

    const v0, -0x777778

    .line 258
    :goto_1
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->mSublogText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->mSublogText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->mSublogImg:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 265
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v2

    .line 267
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;

    move-result-object v0

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;->onSubEntryClicked(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$SublogEntryViewHolder;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
