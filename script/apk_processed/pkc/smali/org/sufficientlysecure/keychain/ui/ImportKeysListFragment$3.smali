.class Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;
.super Ljava/lang/Object;
.source "ImportKeysListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 300
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    .line 303
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;)V

    .line 325
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$302(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Z)Z

    .line 329
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
