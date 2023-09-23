.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;
.super Ljava/lang/Object;
.source "TransferFragment.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->addFakeBackStackItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 366
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;->val$tag:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 6

    move-object/16 v3, p0

    .line 369
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;->val$tag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 374
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 376
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiBackStackPop()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;--->onBackStackChanged()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
