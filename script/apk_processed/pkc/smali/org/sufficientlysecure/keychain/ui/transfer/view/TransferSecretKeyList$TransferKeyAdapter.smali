.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TransferSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private allItemsDisabled:Z

.field private final context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private finishedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private focusedMasterKeyId:Ljava/lang/Long;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final onClickTransferKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 83
    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    .line 84
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->context:Landroid/content/Context;

    .line 85
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 86
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->onClickTransferKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;---><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addToFinishedItems(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->addToFinishedItems(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public clearFinishedItems()V
    .locals 5

    move-object/16 v2, p0

    .line 118
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->notifyItemRangeChanged(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->clearFinishedItems()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public focusItem(Ljava/lang/Long;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 128
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->focusedMasterKeyId:Ljava/lang/Long;

    .line 129
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->getItemCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->notifyItemRangeChanged(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->focusItem(Ljava/lang/Long;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 104
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 109
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 71
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;I)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    .line 97
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 98
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 99
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->context:Landroid/content/Context;

    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->onClickTransferKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->focusedMasterKeyId:Ljava/lang/Long;

    iget-boolean v6, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->allItemsDisabled:Z

    move-object v0, v8

    invoke-static/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Ljava/lang/Long;ZZ)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 92
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;-><init>(Landroid/view/View;)V

    return-object v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAllDisabled(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 133
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->allItemsDisabled:Z

    .line 134
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->getItemCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->notifyItemRangeChanged(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->setAllDisabled(Z)V"

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

    .line 113
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->data:Ljava/util/List;

    .line 114
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
