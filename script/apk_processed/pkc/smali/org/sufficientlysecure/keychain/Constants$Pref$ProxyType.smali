.class public final Lorg/sufficientlysecure/keychain/Constants$Pref$ProxyType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants$Pref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyType"
.end annotation


# static fields
.field public static final TYPE_HTTP:Ljava/lang/String; = "proxyHttp"

.field public static final TYPE_SOCKS:Ljava/lang/String; = "proxySocks"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 174
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$Pref$ProxyType;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
