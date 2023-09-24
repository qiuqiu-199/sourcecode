.class public final Lorg/sufficientlysecure/keychain/Constants$Defaults;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation


# static fields
.field public static final KEY_SERVERS:Ljava/lang/String; = "hkps://keyserver.ubuntu.com,hkps://hkps.pool.sks-keyservers.net;hkp://jirk5u4osbsr34t5.onion,hkps://pgp.mit.edu"

.field public static final PREF_CURRENT_VERSION:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 198
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$Defaults;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
