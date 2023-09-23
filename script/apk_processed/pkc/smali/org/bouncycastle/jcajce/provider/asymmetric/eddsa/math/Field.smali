.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f12f996e680dcL


# instance fields
.field public final EIGHT:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field public final FIVE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field public final FOUR:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field public final ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field public final TWO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field public final ZERO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final b:I

.field private final enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

.field private final q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final qm2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

.field private final qm5d8:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;


# direct methods
.method public constructor <init>(I[BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->b:I

    .line 45
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    .line 46
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->setField(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;)V

    .line 48
    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 51
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->ZERO:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ZERO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 52
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->ONE:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->ONE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 53
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->TWO:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->TWO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 54
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->FOUR:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->FOUR:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 55
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->FIVE:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->FIVE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 56
    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Constants;->EIGHT:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->EIGHT:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 59
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->TWO:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->qm2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    .line 60
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->FIVE:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->subtract(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->EIGHT:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;->divide(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->qm5d8:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    .line 97
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->b:I

    iget v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;->decode([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public getEncoding()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->enc:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;

    return-object v0
.end method

.method public getQ()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getQm2()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->qm2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getQm5d8()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->qm5d8:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getb()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->q:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
