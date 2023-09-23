.class public Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;
.super Landroid/support/v7/widget/CardView;
.source "IdentitiesCardView.java"


# instance fields
.field private final linkedIdsAddButton:Landroid/widget/Button;

.field private final vIdentities:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 42
    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v0, 0x1

    const v1, 0x7f0c0082

    invoke-virtual {v6, v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v1, 0x7f090386

    .line 46
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->vIdentities:Landroid/support/v7/widget/RecyclerView;

    .line 47
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->vIdentities:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->vIdentities:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const v5, 0x7f090371

    .line 50
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->linkedIdsAddButton:Landroid/widget/Button;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setAddLinkedIdButtonVisible(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 68
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->linkedIdsAddButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;--->setAddLinkedIdButtonVisible(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setIdentitiesAdapter(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 54
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->vIdentities:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;--->setIdentitiesAdapter(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setIdentitiesCardListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 64
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->linkedIdsAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;--->setIdentitiesCardListener(Landroid/view/View$OnClickListener;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
