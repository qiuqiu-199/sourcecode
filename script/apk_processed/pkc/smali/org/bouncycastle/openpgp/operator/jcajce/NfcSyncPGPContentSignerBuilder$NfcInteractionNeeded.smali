.class public Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;
.super Ljava/lang/RuntimeException;
.source "NfcSyncPGPContentSignerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcInteractionNeeded"
.end annotation


# instance fields
.field public hashAlgo:I

.field public hashToSign:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const-string v0, "NFC interaction required!"

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    .line 49
    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    return-void
.end method
