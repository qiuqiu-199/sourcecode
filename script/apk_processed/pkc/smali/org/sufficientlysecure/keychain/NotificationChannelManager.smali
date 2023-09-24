.class public Lorg/sufficientlysecure/keychain/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field public static final KEYSERVER_SYNC:Ljava/lang/String; = "keyserverSync"

.field public static final ORBOT:Ljava/lang/String; = "orbot"

.field public static final PASSPHRASE_CACHE:Ljava/lang/String; = "passphraseCache"

.field public static final PERMISSION_REQUESTS:Ljava/lang/String; = "permissionRequests"


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->context:Landroid/content/Context;

    .line 29
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/NotificationChannelManager;---><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createNotificationChannel(Ljava/lang/String;II)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 48
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, v2, v3, p0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 50
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/NotificationChannelManager;--->createNotificationChannel(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;
    .locals 5

    move-object/16 v2, p0

    const-string v0, "notification"

    .line 23
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 24
    new-instance v1, Lorg/sufficientlysecure/keychain/NotificationChannelManager;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-object v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/NotificationChannelManager;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createNotificationChannelsIfNecessary()V
    .locals 6

    move-object/16 v3, p0

    .line 33
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "keyserverSync"

    const v1, 0x7f110bb0

    const/4 v2, 0x1

    .line 40
    invoke-direct {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannel(Ljava/lang/String;II)V

    const-string v0, "permissionRequests"

    const v1, 0x7f110bb3

    .line 41
    invoke-direct {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannel(Ljava/lang/String;II)V

    const-string v0, "passphraseCache"

    const v1, 0x7f110bb2

    const/4 v2, 0x0

    .line 42
    invoke-direct {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannel(Ljava/lang/String;II)V

    const-string v0, "orbot"

    const v1, 0x7f110bb1

    const/4 v2, 0x3

    .line 43
    invoke-direct {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannel(Ljava/lang/String;II)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/NotificationChannelManager;--->createNotificationChannelsIfNecessary()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
