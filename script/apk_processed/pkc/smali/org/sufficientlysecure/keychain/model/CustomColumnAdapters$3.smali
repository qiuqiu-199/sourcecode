.class final Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"

# interfaces
.implements Lcom/squareup/sqldelight/ColumnAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/ColumnAdapter<",
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->fromNum(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v1

    :goto_0
    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;--->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)Ljava/lang/Long;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 64
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->getNum()I

    move-result v3

    int-to-long v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;--->encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;->encode(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
