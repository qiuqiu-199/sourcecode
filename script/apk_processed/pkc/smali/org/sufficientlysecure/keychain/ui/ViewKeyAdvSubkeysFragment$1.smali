.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;
.super Ljava/lang/Object;
.source "ViewKeyAdvSubkeysFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->enterEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 152
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 179
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v2, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/view/ActionMode;)V

    const/4 v1, 0x1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;--->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 156
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 158
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    .line 159
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddSubKeys()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 158
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$202(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    .line 160
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/widget/ViewAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 164
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    move-result-object v0

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    const v0, 0x7f110ce3

    .line 166
    invoke-virtual {v6, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 167
    invoke-virtual {v6}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const/high16 v0, 0x7f0d0000

    invoke-virtual {v6, v0, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;--->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 185
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 186
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    .line 187
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/widget/ViewAnimator;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;--->onDestroyActionMode(Landroid/view/ActionMode;)V"

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

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;--->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
