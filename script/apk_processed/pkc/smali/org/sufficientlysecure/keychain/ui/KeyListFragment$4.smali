.class Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;
.super Ljava/lang/Object;
.source "KeyListFragment.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 406
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 414
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setFilter(Ljava/io/Serializable;)V

    .line 415
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems()V

    const/4 v2, 0x1

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;--->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;--->onMenuItemActionExpand(Landroid/view/MenuItem;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
