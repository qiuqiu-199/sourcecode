.class public final Lorg/sufficientlysecure/keychain/Constants$Orbot;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Orbot"
.end annotation


# static fields
.field public static final PROXY_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final PROXY_PORT:I = 0x1fb6

.field public static final PROXY_TYPE:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 195
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    sput-object v0, Lorg/sufficientlysecure/keychain/Constants$Orbot;->PROXY_TYPE:Ljava/net/Proxy$Type;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$Orbot;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 192
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/Constants$Orbot;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
