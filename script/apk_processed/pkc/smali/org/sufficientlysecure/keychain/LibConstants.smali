.class public final Lorg/sufficientlysecure/keychain/LibConstants;
.super Ljava/lang/Object;
.source "LibConstants.java"


# static fields
.field public static final BOUNCY_CASTLE_PROVIDER_NAME:Ljava/lang/String; = "BC"

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Keychain"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/LibConstants;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
