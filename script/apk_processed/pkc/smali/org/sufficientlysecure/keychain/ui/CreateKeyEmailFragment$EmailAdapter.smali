.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CreateKeyEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;,
        Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private mDataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 282
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 283
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    .line 284
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mFooterOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;---><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->addAll(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addAll(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 344
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->addAll(Ljava/util/ArrayList;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isPositionFooter(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 335
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->isPositionFooter(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 339
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->notifyItemInserted(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->add(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 322
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemViewType(I)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 327
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->isPositionFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->getItemViewType(I)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onBindViewHolder$0$CreateKeyEmailFragment$EmailAdapter(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;Landroid/view/View;)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->remove(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 305
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;

    if-eqz v0, :cond_0

    .line 306
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;

    .line 307
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;->mAddButton:Landroid/widget/Button;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mFooterOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 308
    :cond_0
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 309
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;

    .line 312
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;

    .line 314
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$$Lambda$0;

    invoke-direct {v0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 291
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f0c0040

    .line 292
    invoke-virtual {v4, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 293
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$FooterHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Landroid/view/View;)V

    return-object v4

    .line 296
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f0c0041

    .line 297
    invoke-virtual {v4, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 298
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public remove(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 350
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 351
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 352
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->notifyItemRemoved(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;--->remove(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
