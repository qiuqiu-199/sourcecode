.class public Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "IdentityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;,
        Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_LINKED_ID:I = 0x1

.field private static final VIEW_TYPE_USER_ID:I


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final identityClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;

.field private isSecret:Z

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 62
    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->context:Landroid/content/Context;

    .line 65
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->identityClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getInfo(I)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 125
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->getInfo(I)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 121
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemViewType(I)I
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 109
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    .line 110
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    if-nez v0, :cond_2

    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    instance-of v2, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "unhandled identitytype!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->getItemViewType(I)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 48
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 77
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    .line 79
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 81
    instance-of v4, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    if-eqz v4, :cond_0

    .line 82
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;)V

    goto :goto_0

    .line 84
    :cond_0
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v4, v1, :cond_2

    .line 87
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->context:Landroid/content/Context;

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->isSecret:Z

    invoke-virtual {v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;Z)V

    :goto_0
    return-void

    .line 89
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unhandled identitytype!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    const/4 v0, 0x0

    if-nez v5, :cond_0

    .line 97
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0113

    .line 98
    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->identityClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;

    const/4 v1, 0x0

    invoke-direct {v5, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;-><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$1;)V

    return-object v5

    :cond_0
    const/4 v1, 0x1

    if-ne v5, v1, :cond_1

    .line 100
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00a1

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->identityClickListener:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;

    invoke-direct {v5, v4, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;-><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    return-object v5

    .line 103
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "unhandled identitytype!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->data:Ljava/util/List;

    .line 70
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->isSecret:Z

    .line 72
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->notifyDataSetChanged()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;--->setData(Ljava/util/List;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
