.class public Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;
.super Ljava/lang/Object;
.source "EdDSANamedCurveTable.java"


# static fields
.field private static final curves:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final ed25519:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

.field private static final ed25519curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

.field private static final ed25519field:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    const-string v1, "edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f"

    .line 31
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ed25519/Ed25519LittleEndianEncoding;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ed25519/Ed25519LittleEndianEncoding;-><init>()V

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;-><init>(I[BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Encoding;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519field:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    .line 34
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519field:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    const-string v2, "a3785913ca4deb75abd841414d0a700098e879777940c78c73fe6f2bee6c0352"

    .line 35
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519field:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    const-string v4, "b0a00e4a271beec478e42fad0618432fa7d7fb3d99004d2b0bdfc14f8024832b"

    .line 36
    invoke-static {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->fromByteArray([B)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;[BLorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/FieldElement;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    .line 38
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    const-string v5, "Ed25519"

    sget-object v6, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    const-string v7, "SHA-512"

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ed25519/Ed25519ScalarOps;

    invoke-direct {v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ed25519/Ed25519ScalarOps;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519curve:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    const-string v2, "5866666666666666666666666666666666666666666666666666666666666666"

    .line 44
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->createPoint([BZ)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/ScalarOps;Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/Hashtable;

    .line 63
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->ed25519:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->defineCurve(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defineCurve(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;)V
    .locals 3

    .line 50
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    if-nez p0, :cond_0

    .line 56
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 58
    :cond_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;
    .locals 2

    .line 67
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    return-object p0
.end method
