.class Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;
.super Ljava/lang/Object;
.source "KeyserverSyncWorker.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/Progressable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->notificationShowForProgress()Lorg/sufficientlysecure/keychain/pgp/Progressable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

.field final synthetic val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$notificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;Landroid/app/NotificationManager;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 95
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->this$0:Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$notificationManager:Landroid/app/NotificationManager;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$context:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;---><init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;Landroid/app/NotificationManager;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Context;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setPreventCancel()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;--->setPreventCancel()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;->setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;--->setProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/Integer;II)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    move/16 p0, p3

    const/4 v7, 0x3

    if-nez p0, :cond_0

    .line 99
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 103
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    if-ne v8, p0, :cond_1

    .line 105
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$context:Landroid/content/Context;

    const v3, 0x7f110bb6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$context:Landroid/content/Context;

    const v4, 0x7f110bb4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 110
    :goto_0
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$notificationManager:Landroid/app/NotificationManager;

    iget-object p0, v6, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;->val$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v8, v7, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;--->setProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
