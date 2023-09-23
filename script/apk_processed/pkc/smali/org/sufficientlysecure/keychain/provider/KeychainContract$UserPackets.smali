.class public Lorg/sufficientlysecure/keychain/provider/KeychainContract$UserPackets;
.super Ljava/lang/Object;
.source "KeychainContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lorg/sufficientlysecure/keychain/provider/KeychainContract$UserPacketsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/provider/KeychainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPackets"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainContract$UserPackets;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
