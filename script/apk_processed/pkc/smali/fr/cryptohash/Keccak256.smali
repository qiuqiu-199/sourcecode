.class public Lfr/cryptohash/Keccak256;
.super Lfr/cryptohash/KeccakCore;
.source "Keccak256.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lfr/cryptohash/KeccakCore;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBlockLength()I
    .locals 1

    .line 41
    invoke-super {p0}, Lfr/cryptohash/KeccakCore;->getBlockLength()I

    move-result v0

    return v0
.end method

.method public getDigestLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-super {p0}, Lfr/cryptohash/KeccakCore;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
