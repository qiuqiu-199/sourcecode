.class Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;
.super Ljava/lang/Object;
.source "KeyListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/KeyListFragment;
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

    .line 105
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 119
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)[J

    move-result-object v4

    .line 122
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;[J)V

    .line 123
    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)[J

    move-result-object v4

    .line 129
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)Z

    move-result v0

    .line 130
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-static {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;[JZ)V

    .line 131
    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    :goto_0
    const/4 v3, 0x0

    return v3

    :pswitch_data_0
    .packed-switch 0x7f090233
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;--->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 108
    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v0, 0x7f0d000f

    invoke-virtual {v2, v0, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v2, 0x1

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;--->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 140
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->access$402(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 141
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;--->onDestroyActionMode(Landroid/view/ActionMode;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    const/4 v1, 0x0

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;--->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
