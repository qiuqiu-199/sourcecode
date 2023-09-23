.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
.super Ljava/lang/Object;
.source "GroupElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8830a11ed1f53L


# instance fields
.field final T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field final X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field final Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field final Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field final curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

.field dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field final repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    .line 215
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 216
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 217
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 218
    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 219
    iput-object p6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;[B)V
    .locals 5

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtractOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getD()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->addOne()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->pow22523()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 259
    invoke-virtual {v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->isNonZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->isNonZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid GroupElement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getI()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 271
    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->isNegative()Z

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getb()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->bit([BI)I

    move-result p2

    if-eq v1, p2, :cond_2

    .line 272
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 275
    :cond_2
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    .line 276
    sget-object p2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 277
    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 278
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 279
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object p1

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 280
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-void
.end method

.method public static cached(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 8

    .line 148
    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method private madd(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 598
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_0

    .line 599
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 600
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_1

    .line 601
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 604
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 606
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 607
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 608
    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 609
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 610
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-static {v3, v4, v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method private msub(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 627
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_0

    .line 628
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 629
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_1

    .line 630
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 633
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 635
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 636
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 637
    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 638
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 639
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-static {v3, v4, v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method public static p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 8

    .line 112
    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P1P1:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method public static p2(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 8

    .line 74
    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method public static p3(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 8

    .line 93
    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method public static precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 8

    .line 129
    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method static slide([B)[B
    .locals 8

    const/16 v0, 0x100

    .line 914
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x3

    .line 918
    aget-byte v5, p0, v5

    and-int/lit8 v6, v3, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_5

    .line 923
    aget-byte v3, v1, p0

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    const/4 v5, 0x6

    if-gt v3, v5, :cond_4

    add-int v5, p0, v3

    if-ge v5, v0, :cond_4

    .line 926
    aget-byte v6, v1, v5

    if-eqz v6, :cond_3

    .line 927
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    add-int/2addr v6, v7

    const/16 v7, 0xf

    if-gt v6, v7, :cond_1

    .line 928
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, p0

    .line 929
    aput-byte v2, v1, v5

    goto :goto_4

    .line 930
    :cond_1
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    sub-int/2addr v6, v7

    const/16 v7, -0xf

    if-lt v6, v7, :cond_4

    .line 931
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, p0

    :goto_3
    if-ge v5, v0, :cond_3

    .line 933
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 934
    aput-byte v4, v1, v5

    goto :goto_4

    .line 937
    :cond_2
    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method static toRadix16([B)[B
    .locals 6

    const/16 v0, 0x40

    .line 789
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x0

    .line 793
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    .line 794
    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    const/16 v2, 0x3f

    if-ge v1, v2, :cond_1

    .line 800
    aget-byte v2, v0, v1

    add-int/2addr v2, p0

    int-to-byte p0, v2

    aput-byte p0, v0, v1

    .line 801
    aget-byte p0, v0, v1

    add-int/lit8 p0, p0, 0x8

    shr-int/lit8 p0, p0, 0x4

    .line 803
    aget-byte v2, v0, v1

    shl-int/lit8 v3, p0, 0x4

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 805
    :cond_1
    aget-byte v1, v0, v2

    add-int/2addr v1, p0

    int-to-byte p0, v1

    aput-byte p0, v0, v2

    return-object v0
.end method

.method private toRep(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 404
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 435
    :pswitch_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 439
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 437
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 424
    :pswitch_1
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_1

    .line 432
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 428
    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p3(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 426
    :pswitch_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p2(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 430
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 442
    :pswitch_4
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 446
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 444
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cached(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_5
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2

    .line 421
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 419
    :pswitch_6
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->get2D()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cached(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 417
    :pswitch_7
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p3(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_8
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p2(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    .line 406
    :pswitch_9
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    .line 410
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 408
    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p2(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 669
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_0

    .line 670
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 671
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_1

    .line 672
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 675
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 677
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 678
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 679
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 680
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 681
    invoke-virtual {p1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 682
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-static {v3, v4, v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 4

    .line 823
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method public dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 535
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 539
    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->squareAndDouble()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 542
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 543
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 544
    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 545
    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    invoke-static {v1, v3, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doubleScalarMultiplyVariableTime(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;[B[B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 4

    .line 962
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->slide([B)[B

    move-result-object p2

    .line 963
    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->slide([B)[B

    move-result-object p3

    .line 965
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getZero(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    const/16 v1, 0xff

    :goto_0
    if-ltz v1, :cond_1

    .line 969
    aget-byte v2, p2, v1

    if-nez v2, :cond_1

    aget-byte v2, p3, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 972
    :cond_1
    :goto_1
    monitor-enter p0

    :goto_2
    if-ltz v1, :cond_6

    .line 979
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    .line 981
    aget-byte v2, p2, v1

    if-lez v2, :cond_2

    .line 982
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-byte v3, p2, v1

    div-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->madd(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    goto :goto_3

    .line 983
    :cond_2
    aget-byte v2, p2, v1

    if-gez v2, :cond_3

    .line 984
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-byte v3, p2, v1

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->msub(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    .line 987
    :cond_3
    :goto_3
    aget-byte v2, p3, v1

    if-lez v2, :cond_4

    .line 988
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-byte v3, p3, v1

    div-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->madd(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    goto :goto_4

    .line 989
    :cond_4
    aget-byte v2, p3, v1

    if-gez v2, :cond_5

    .line 990
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-byte v3, p3, v1

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->msub(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    .line 993
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 995
    :cond_6
    monitor-exit p0

    return-object v0

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 736
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 738
    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 739
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-direct {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toRep(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v2

    .line 746
    :cond_2
    :goto_0
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    return v2

    .line 762
    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 759
    :pswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 765
    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 766
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 768
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 769
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v4, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 770
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v5, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 771
    iget-object v5, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v5

    .line 772
    iget-object v6, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    .line 773
    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 774
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 750
    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 751
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 753
    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 754
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v4, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 755
    iget-object v4, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    .line 756
    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 757
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurve()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    return-object v0
.end method

.method public getRepresentation()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    return-object v0
.end method

.method public getT()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getX()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getY()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getZ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isOnCurve()Z
    .locals 1

    .line 1005
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->isOnCurve(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;)Z

    move-result v0

    return v0
.end method

.method public isOnCurve(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;)Z
    .locals 3

    .line 1014
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1026
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->isOnCurve(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;)Z

    move-result p1

    return p1

    .line 1017
    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 1019
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 1020
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 1021
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->square()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 1022
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getD()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 1023
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object p1

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 2

    .line 722
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getZero(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->sub(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized precompute(Z)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 464
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    if-nez p1, :cond_2

    const/16 p1, 0x20

    .line 466
    filled-new-array {p1, v1}, [I

    move-result-object v2

    const-class v3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-object v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    move-object v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 472
    iget-object v6, v5, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    .line 473
    iget-object v7, v5, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v7

    .line 474
    iget-object v8, v5, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v8, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    .line 475
    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v8, v8, v2

    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v10

    invoke-virtual {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v11

    invoke-virtual {v7, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->get2D()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    invoke-static {v9, v10, v11, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v6

    aput-object v6, v8, v4

    .line 476
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v4, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    .line 480
    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 487
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 488
    monitor-exit p0

    return-void

    .line 489
    :cond_3
    :try_start_1
    new-array p1, v1, [Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-object p1, p0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 492
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 493
    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    .line 494
    iget-object v4, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 495
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dblPrecmp:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v6

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v7

    invoke-virtual {v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->get2D()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    invoke-static {v5, v6, v7, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v2

    aput-object v2, v4, v0

    .line 497
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 499
    :cond_4
    monitor-exit p0

    return-void

    .line 463
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public scalarMultiply([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 877
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toRadix16([B)[B

    move-result-object p1

    .line 879
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getZero(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    .line 880
    monitor-enter p0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 886
    :try_start_0
    div-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->select(II)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v2

    .line 887
    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->madd(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 890
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->dbl()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 893
    div-int/lit8 v3, v1, 0x2

    aget-byte v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->select(II)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v3

    .line 894
    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->madd(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 896
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method select(II)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 842
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->negative(I)I

    move-result v0

    neg-int v1, v0

    and-int/2addr v1, p2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 847
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getZero(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 848
    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v2, v3, v2

    const/4 v3, 0x2

    .line 849
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x3

    .line 850
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x4

    .line 851
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x5

    .line 852
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x6

    .line 853
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x7

    .line 854
    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precmp:[[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    aget-object p1, v2, p1

    aget-object p1, p1, v3

    const/16 v2, 0x8

    .line 855
    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->equal(II)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    .line 857
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    iget-object v1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->negate()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-static {p2, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p2

    .line 859
    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->cmov(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;I)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 5

    .line 698
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_0

    .line 699
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 700
    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    if-eq v0, v1, :cond_1

    .line 701
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 704
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 706
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 707
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 708
    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v2

    .line 709
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 710
    invoke-virtual {p1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    .line 711
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-static {v3, v4, v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p1p1(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    return-object p1
.end method

.method public toByteArray()[B
    .locals 4

    .line 347
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->repr:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 357
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->invert()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->multiply(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->toByteArray()[B

    move-result-object v0

    .line 354
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, -0x80

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toCached()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 385
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toRep(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toP2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 367
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toRep(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toP3()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 376
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->toRep(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GroupElement\nX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->X:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Y:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->Z:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->T:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
