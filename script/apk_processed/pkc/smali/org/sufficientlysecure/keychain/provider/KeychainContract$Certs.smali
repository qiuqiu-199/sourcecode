.class public Lorg/sufficientlysecure/keychain/provider/KeychainContract$Certs;
.super Ljava/lang/Object;
.source "KeychainContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lorg/sufficientlysecure/keychain/provider/KeychainContract$CertsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/provider/KeychainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Certs"
.end annotation


# static fields
.field public static final VERIFIED_SECRET:I = 0x1

.field public static final VERIFIED_SELF:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainContract$Certs;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
