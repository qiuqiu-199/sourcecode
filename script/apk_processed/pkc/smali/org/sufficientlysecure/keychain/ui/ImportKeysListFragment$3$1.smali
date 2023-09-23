.class Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;
.super Ljava/lang/Object;
.source "ImportKeysListFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 304
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    move-object/16 v2, p0

    .line 321
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$302(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Z)Z

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;--->onCancel()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNeutralButton()V
    .locals 5

    move-object/16 v2, p0

    .line 313
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    .line 314
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getForNoProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$502(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    .line 315
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$302(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Z)Z

    .line 316
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;--->onNeutralButton()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOrbotStarted()V
    .locals 5

    move-object/16 v2, p0

    .line 307
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$302(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Z)Z

    .line 308
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;->this$1:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3$1;--->onOrbotStarted()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
