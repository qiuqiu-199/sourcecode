.class public Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;,
        Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;
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
.field private mActivity:Landroid/app/Activity;

.field private mDataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 853
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 854
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mActivity:Landroid/app/Activity;

    .line 855
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    .line 856
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mFooterOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;---><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;)Ljava/util/List;
    .locals 0

    .line 778
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    return-object p0
.end method

.method private isPositionFooter(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 923
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

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

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->isPositionFooter(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 927
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 928
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    new-instance v3, Ljava/io/IOException;

    const-string v0, "Already added!"

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->notifyItemInserted(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->add(Landroid/net/Uri;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    if-eqz v5, :cond_2

    .line 937
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 938
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 939
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 940
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped duplicate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 943
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :cond_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->notifyItemRangeInserted(II)V

    :cond_2
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->addAll(Ljava/util/ArrayList;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAsArrayList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 966
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    .line 967
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->getAsArrayList()Ljava/util/ArrayList;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 910
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemViewType(I)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 915
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->isPositionFooter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->getItemViewType(I)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getModelCount()I
    .locals 4

    move-object/16 v1, p0

    .line 951
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->getModelCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getModelItem(I)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 955
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->getModelItem(I)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 877
    instance-of v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;

    if-eqz v0, :cond_0

    .line 878
    check-cast v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;

    .line 879
    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;->mAddButton:Landroid/widget/Button;

    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mFooterOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 880
    :cond_0
    instance-of v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;

    if-eqz v0, :cond_3

    .line 881
    check-cast v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;

    .line 884
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    .line 886
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-wide v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->fileSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 888
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;

    iget-wide v1, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->fileSize:J

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->readableFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :goto_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->removeButton:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$1;

    invoke-direct {v1, v5, v7}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 899
    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v7, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 901
    :cond_2
    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v7, 0x7f0800ac

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 863
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f0c0078

    .line 864
    invoke-virtual {v4, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 865
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$FooterHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V

    return-object v4

    .line 868
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f0c0077

    .line 869
    invoke-virtual {v4, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 870
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public remove(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 959
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 960
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 961
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->notifyItemRemoved(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;--->remove(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
