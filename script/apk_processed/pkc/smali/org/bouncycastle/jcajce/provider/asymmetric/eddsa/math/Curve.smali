.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x104481180f8183L


# instance fields
.field private final I:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final d2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

.field private final zeroP2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final zeroP3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

.field private final zeroPrecomp:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;[BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    .line 35
    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 36
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->add(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 37
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->I:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 39
    iget-object p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ZERO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 40
    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 41
    invoke-static {p0, p2, p1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p2(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroP2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 42
    invoke-static {p0, p2, p1, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->p3(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroP3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    .line 43
    invoke-static {p0, p1, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precomp(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroPrecomp:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-void
.end method


# virtual methods
.method public createPoint([BZ)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 76
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;[B)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 78
    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;->precompute(Z)V

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 95
    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 97
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getD()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->I:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 98
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getI()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get2D()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getD()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    return-object v0
.end method

.method public getI()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->I:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getZero(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
    .locals 1

    .line 63
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :pswitch_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroPrecomp:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object p1

    .line 67
    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroP3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object p1

    .line 65
    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->zeroP2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->I:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
