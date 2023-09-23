.class public Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SettingsSmartPGPAuthorityFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final authorityName:Landroid/widget/TextView;

.field public final outerLayout:Landroid/view/ViewGroup;

.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 317
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    .line 318
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f090261

    .line 319
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;->outerLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0902da

    .line 320
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;->authorityName:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 321
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemClear()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;--->onItemClear()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemSelected()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter$ViewHolder;--->onItemSelected()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
