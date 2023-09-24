.class public Lorg/bouncycastle/crypto/params/RC2Parameters;
.super Lorg/bouncycastle/crypto/params/KeyParameter;
.source "RC2Parameters.java"


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 19
    iput p2, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method
