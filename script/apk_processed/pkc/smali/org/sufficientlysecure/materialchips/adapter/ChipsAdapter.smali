.class public abstract Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_EDIT_TEXT:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private chipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/materialchips/ChipsInput<",
            "TT;>;"
        }
    .end annotation
.end field

.field private chipsRecycler:Landroid/support/v7/widget/RecyclerView;

.field protected context:Landroid/content/Context;

.field private editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

.field private hintLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/ChipsInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/sufficientlysecure/materialchips/ChipsInput<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    .line 43
    invoke-virtual {p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->getChipsRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 44
    invoke-virtual {p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->getEditText()Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    .line 45
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->getHint()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->hintLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;Lorg/sufficientlysecure/materialchips/views/DetailedChipView;[I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->setDetailedChipViewPosition(Lorg/sufficientlysecure/materialchips/views/DetailedChipView;[I)V

    return-void
.end method

.method private autofitEditText()V
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x32

    .line 82
    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;-><init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setDetailedChipViewPosition(Lorg/sufficientlysecure/materialchips/views/DetailedChipView;[I)V
    .locals 9

    .line 151
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    .line 155
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x12c

    .line 156
    invoke-static {v3}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v4

    const/16 v5, 0x64

    .line 157
    invoke-static {v5}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    .line 160
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x0

    .line 163
    aget v5, p2, v4

    const/4 v6, 0x1

    const/16 v7, 0xd

    if-gtz v5, :cond_0

    .line 164
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 165
    aget p2, p2, v6

    invoke-static {v7}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->alignLeft()V

    goto :goto_0

    .line 169
    :cond_0
    aget v5, p2, v4

    invoke-static {v3}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v8

    add-int/2addr v5, v8

    invoke-static {v7}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v8

    add-int/2addr v8, v1

    if-le v5, v8, :cond_1

    .line 170
    invoke-static {v3}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 171
    aget p2, p2, v6

    invoke-static {v7}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->alignRight()V

    goto :goto_0

    .line 176
    :cond_1
    aget v1, p2, v4

    invoke-static {v7}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 177
    aget p2, p2, v6

    invoke-static {v7}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 181
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->fadeIn()V

    return-void
.end method


# virtual methods
.method public addChip(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    .line 213
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addChipsProgrammatically(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItemCount()I

    move-result v0

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    .line 190
    iget-object v3, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method public getChipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    return-object v0
.end method

.method public abstract getDetailedChipView(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/sufficientlysecure/materialchips/views/DetailedChipView;"
        }
    .end annotation
.end method

.method protected getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public handleClickOnEditText(Lorg/sufficientlysecure/materialchips/ChipView;I)V
    .locals 1

    .line 115
    new-instance v0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;

    invoke-direct {v0, p0, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;-><init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;I)V

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setOnDeleteClicked(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->isShowChipDetailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;

    invoke-direct {v0, p0, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;-><init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;I)V

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setOnChipClicked(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public abstract onBindChipViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 274
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->hintLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->autofitEditText()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 280
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->onBindChipViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract onCreateChipViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p2, :cond_0

    .line 263
    new-instance p1, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;

    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    invoke-direct {p1, p0, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;-><init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;Landroid/view/View;)V

    return-object p1

    .line 265
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->onCreateChipViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public removeChip(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    .line 237
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    .line 241
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 242
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->hintLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeChip(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 222
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->notifyItemRangeChanged(II)V

    .line 225
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipsInput:Lorg/sufficientlysecure/materialchips/ChipsInput;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    .line 227
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->editText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->hintLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeLastChip()V
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->chipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->removeChip(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V

    :cond_0
    return-void
.end method
