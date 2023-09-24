.class public Lorg/bouncycastle/bcpg/attr/ImageAttribute;
.super Lorg/bouncycastle/bcpg/UserAttributeSubpacket;
.source "ImageAttribute.java"


# static fields
.field private static final ZEROES:[B


# instance fields
.field private encoding:I

.field private hdrLength:I

.field private imageData:[B

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 17
    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 3

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    .line 36
    aget-byte p1, p2, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->hdrLength:I

    const/4 p1, 0x2

    .line 37
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->version:I

    const/4 p1, 0x3

    .line 38
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->encoding:I

    .line 40
    array-length p1, p2

    iget v1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->hdrLength:I

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->imageData:[B

    .line 41
    iget p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->hdrLength:I

    iget-object v1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->imageData:[B

    iget-object v2, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->imageData:[B

    array-length v2, v2

    invoke-static {p2, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
