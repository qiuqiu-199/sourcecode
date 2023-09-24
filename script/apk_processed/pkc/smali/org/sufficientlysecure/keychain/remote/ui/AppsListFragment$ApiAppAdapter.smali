.class public Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 118
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;

    .line 119
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 121
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->data:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 138
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 113
    check-cast p1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 132
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    .line 133
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->bind(Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 127
    new-instance v6, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/view/View;)V

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->data:Ljava/util/List;

    .line 143
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
