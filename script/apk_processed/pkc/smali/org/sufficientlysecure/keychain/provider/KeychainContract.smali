.class public Lorg/sufficientlysecure/keychain/provider/KeychainContract;
.super Ljava/lang/Object;
.source "KeychainContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$Certs;,
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$UserPackets;,
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$Keys;,
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$CertsColumns;,
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$UserPacketsColumns;,
        Lorg/sufficientlysecure/keychain/provider/KeychainContract$KeysColumns;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainContract;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
