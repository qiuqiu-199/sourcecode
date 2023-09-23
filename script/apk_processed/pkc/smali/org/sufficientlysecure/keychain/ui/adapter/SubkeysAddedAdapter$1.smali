.class Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;
.super Ljava/lang/Object;
.source "SubkeysAddedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

.field final synthetic val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 112
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v3, 0x1

    .line 117
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->newInstance(Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    move-result-object v3

    .line 118
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;)V

    .line 119
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->setOnAlgorithmSelectedListener(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;)V

    .line 131
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    .line 132
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "addSubkeyDialog"

    .line 131
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
