.class final Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;
.super Landroid/os/AsyncTask;
.source "KeyserverSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->updateKeyserverSyncScheduleAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceReschedule:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->val$context:Landroid/content/Context;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->val$forceReschedule:Z

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;---><init>(Landroid/content/Context;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 52
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->val$context:Landroid/content/Context;

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->val$forceReschedule:Z

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->access$000(Landroid/content/Context;Z)V

    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
