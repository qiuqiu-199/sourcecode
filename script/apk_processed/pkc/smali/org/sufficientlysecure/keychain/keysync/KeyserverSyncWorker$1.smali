.class Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;
.super Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;
.source "KeyserverSyncWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->handleUpdateResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)Landroidx/work/Worker$WorkerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 55
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;->this$0:Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;---><init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onOrbotStarted()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;--->onOrbotStarted()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSilentStartDisabled()V
    .locals 4

    move-object/16 v1, p0

    .line 62
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;->this$0:Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;->showOrbotRequiredNotification(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;--->onSilentStartDisabled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
