.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ReceivedSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;",
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

.field private final onClickImportKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 79
    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    .line 80
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->context:Landroid/content/Context;

    .line 81
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 82
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->onClickImportKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;---><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addItem(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 118
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->notifyItemInserted(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->addItem(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addToFinishedItems(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 108
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->addToFinishedItems(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public clear()V
    .locals 4

    move-object/16 v1, p0

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusedMasterKeyId:Ljava/lang/Long;

    .line 126
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->clear()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public focusItem(Ljava/lang/Long;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 113
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusedMasterKeyId:Ljava/lang/Long;

    .line 114
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->getItemCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->notifyItemRangeChanged(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->focusItem(Ljava/lang/Long;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 104
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 68
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;I)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 92
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    .line 93
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->finishedItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 94
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->context:Landroid/content/Context;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->onClickImportKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusedMasterKeyId:Ljava/lang/Long;

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 87
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;-><init>(Landroid/view/View;)V

    return-object v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
