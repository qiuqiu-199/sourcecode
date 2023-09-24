.class public Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SettingsSmartPGPAuthorityFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthorityListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;",
        ">;",
        "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private final mAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 282
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 283
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->mAuthorities:Ljava/util/List;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/util/List;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 307
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->mAuthorities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 277
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 295
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;->authorityName:Landroid/widget/TextView;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->mAuthorities:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 277
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 288
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v0, 0x7f0c00ed

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v4, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 290
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 301
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->mAuthorities:Ljava/util/List;

    invoke-static {v1, p0, p1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 302
    invoke-virtual {v0, p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->notifyItemMoved(II)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;--->onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
