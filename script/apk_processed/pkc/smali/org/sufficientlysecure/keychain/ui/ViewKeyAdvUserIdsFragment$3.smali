.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;
.super Ljava/lang/Object;
.source "ViewKeyAdvUserIdsFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->enterEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 239
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 267
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/view/ActionMode;)V

    const/4 v1, 0x1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;--->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 242
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    .line 243
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    .line 242
    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 245
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    .line 246
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddUserIds()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 245
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$202(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    .line 247
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/widget/ViewAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 251
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    move-result-object v0

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    .line 252
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->notifyDataSetChanged()V

    const v0, 0x7f110ce1

    .line 254
    invoke-virtual {v6, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 255
    invoke-virtual {v6}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const/high16 v0, 0x7f0d0000

    invoke-virtual {v6, v0, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;--->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 273
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 274
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    .line 275
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/widget/ViewAnimator;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 277
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->notifyDataSetChanged()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;--->onDestroyActionMode(Landroid/view/ActionMode;)V"

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

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;--->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
