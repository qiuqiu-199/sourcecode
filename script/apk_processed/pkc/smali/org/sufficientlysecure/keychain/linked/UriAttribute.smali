.class public Lorg/sufficientlysecure/keychain/linked/UriAttribute;
.super Ljava/lang/Object;
.source "UriAttribute.java"


# instance fields
.field public final mUri:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Ljava/net/URI;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->mUri:Ljava/net/URI;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;---><init>(Ljava/net/URI;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromAttributeData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 45
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->fromData([B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->getSubpackets()[[B

    move-result-object v2

    .line 48
    array-length v0, v2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 49
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->fromSubpacketData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    move-result-object v2

    return-object v2

    .line 52
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v0, "no subpacket data"

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->fromAttributeData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromResource(Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;)Lorg/sufficientlysecure/keychain/linked/UriAttribute;
    .locals 4

    move-object/16 v1, p0

    .line 75
    new-instance v0, Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;-><init>(Ljava/net/URI;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->fromResource(Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;)Lorg/sufficientlysecure/keychain/linked/UriAttribute;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static fromSubpacketData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;
    .locals 5

    move-object/16 v2, p0

    .line 58
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->fromUri(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 66
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;-><init>(Ljava/net/URI;Lorg/sufficientlysecure/keychain/linked/LinkedResource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v2, "error parsing uri in (suspected) linked id packet"

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->fromSubpacketData([B)Lorg/sufficientlysecure/keychain/linked/UriAttribute;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x0

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayIcon()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0800ef

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->getDisplayIcon()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const-string v1, "Unknown Identity"

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncoded()[B
    .locals 4

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->mUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->getEncoded()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toUserAttribute()Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;
    .locals 5

    move-object/16 v2, p0

    .line 80
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;->fromSubpacket(I[B)Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/UriAttribute;--->toUserAttribute()Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
