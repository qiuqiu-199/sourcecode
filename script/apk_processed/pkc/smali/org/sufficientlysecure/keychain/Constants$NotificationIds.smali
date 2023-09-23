.class public final Lorg/sufficientlysecure/keychain/Constants$NotificationIds;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationIds"
.end annotation


# static fields
.field public static final KEYSERVER_SYNC:I = 0x3

.field public static final KEYSERVER_SYNC_FAIL_ORBOT:I = 0x2

.field public static final PASSPHRASE_CACHE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 116
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$NotificationIds;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
