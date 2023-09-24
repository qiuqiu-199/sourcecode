.class public Lio/jsonwebtoken/impl/DefaultJwtParser;
.super Ljava/lang/Object;
.source "DefaultJwtParser.java"

# interfaces
.implements Lio/jsonwebtoken/JwtParser;


# static fields
.field private static final ISO_8601_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8


# instance fields
.field private allowedClockSkewMillis:J

.field private clock:Lio/jsonwebtoken/Clock;

.field private compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

.field expectedClaims:Lio/jsonwebtoken/Claims;

.field private key:Ljava/security/Key;

.field private keyBytes:[B

.field private objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 70
    new-instance v0, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/DefaultCompressionCodecResolver;-><init>()V

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    .line 72
    new-instance v0, Lio/jsonwebtoken/impl/DefaultClaims;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultClaims;-><init>()V

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    .line 74
    sget-object v0, Lio/jsonwebtoken/impl/DefaultClock;->INSTANCE:Lio/jsonwebtoken/Clock;

    iput-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->clock:Lio/jsonwebtoken/Clock;

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    return-void
.end method

.method private validateExpectedClaims(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;)V
    .locals 9

    .line 424
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0}, Lio/jsonwebtoken/Claims;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v2, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 427
    invoke-interface {p2, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "iat"

    .line 430
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "exp"

    .line 431
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "nbf"

    .line 432
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    instance-of v4, v2, Ljava/util/Date;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 441
    new-instance v4, Ljava/util/Date;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object v3, v4

    goto :goto_2

    .line 434
    :cond_1
    :goto_1
    iget-object v2, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    const-class v3, Ljava/util/Date;

    invoke-interface {v2, v1, v3}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 435
    const-class v3, Ljava/util/Date;

    invoke-interface {p2, v1, v3}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v3, :cond_3

    const-string v3, "Expected %s claim to be: %s, but was not present in the JWT claims."

    .line 447
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 451
    new-instance v4, Lio/jsonwebtoken/MissingClaimException;

    invoke-direct {v4, p1, p2, v3}, Lio/jsonwebtoken/MissingClaimException;-><init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;)V

    goto :goto_3

    .line 452
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v4, "Expected %s claim to be: %s, but was: %s."

    const/4 v8, 0x3

    .line 453
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    aput-object v3, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 457
    new-instance v4, Lio/jsonwebtoken/IncorrectClaimException;

    invoke-direct {v4, p1, p2, v3}, Lio/jsonwebtoken/IncorrectClaimException;-><init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    goto/16 :goto_0

    .line 461
    :cond_5
    invoke-virtual {v4, v1}, Lio/jsonwebtoken/InvalidClaimException;->setClaimName(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v4, v2}, Lio/jsonwebtoken/InvalidClaimException;->setClaimValue(Ljava/lang/Object;)V

    .line 463
    throw v4

    :cond_6
    return-void
.end method


# virtual methods
.method protected createSignatureValidator(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)Lio/jsonwebtoken/impl/crypto/JwtSignatureValidator;
    .locals 1

    .line 472
    new-instance v0, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;

    invoke-direct {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    return-object v0
.end method

.method public isSigned(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x2e

    if-ne v2, v4, :cond_2

    .line 189
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_1

    if-eq v3, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-ne v3, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public parse(Ljava/lang/String;)Lio/jsonwebtoken/Jwt;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/ExpiredJwtException;,
            Lio/jsonwebtoken/MalformedJwtException;,
            Lio/jsonwebtoken/SignatureException;
        }
    .end annotation

    const-string v0, "JWT String argument cannot be null or empty."

    .line 203
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v4

    move-object v8, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v9, 0x2e

    const/4 v10, 0x1

    if-ge v5, v2, :cond_4

    aget-char v11, v1, v5

    if-ne v11, v9, :cond_3

    .line 217
    invoke-static {v0}, Lio/jsonwebtoken/lang/Strings;->clean(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 218
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    move-object v9, v4

    :goto_1
    if-nez v6, :cond_1

    move-object v8, v9

    goto :goto_2

    :cond_1
    if-ne v6, v10, :cond_2

    move-object v7, v9

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 229
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v6, v1, :cond_21

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v4

    :goto_4
    if-eqz v7, :cond_20

    if-eqz v8, :cond_7

    .line 251
    sget-object p1, Lio/jsonwebtoken/impl/TextCodec;->BASE64URL:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {p1, v8}, Lio/jsonwebtoken/impl/TextCodec;->decodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultJwtParser;->readValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz v0, :cond_6

    .line 255
    new-instance v1, Lio/jsonwebtoken/impl/DefaultJwsHeader;

    invoke-direct {v1, p1}, Lio/jsonwebtoken/impl/DefaultJwsHeader;-><init>(Ljava/util/Map;)V

    goto :goto_5

    .line 257
    :cond_6
    new-instance v1, Lio/jsonwebtoken/impl/DefaultHeader;

    invoke-direct {v1, p1}, Lio/jsonwebtoken/impl/DefaultHeader;-><init>(Ljava/util/Map;)V

    .line 260
    :goto_5
    iget-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    invoke-interface {p1, v1}, Lio/jsonwebtoken/CompressionCodecResolver;->resolveCompressionCodec(Lio/jsonwebtoken/Header;)Lio/jsonwebtoken/CompressionCodec;

    move-result-object p1

    goto :goto_6

    :cond_7
    move-object p1, v4

    move-object v1, p1

    :goto_6
    if-eqz p1, :cond_8

    .line 266
    sget-object v2, Lio/jsonwebtoken/impl/TextCodec;->BASE64URL:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {v2, v7}, Lio/jsonwebtoken/impl/TextCodec;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Lio/jsonwebtoken/CompressionCodec;->decompress([B)[B

    move-result-object p1

    .line 267
    new-instance v2, Ljava/lang/String;

    sget-object v5, Lio/jsonwebtoken/lang/Strings;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_7

    .line 269
    :cond_8
    sget-object p1, Lio/jsonwebtoken/impl/TextCodec;->BASE64URL:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {p1, v7}, Lio/jsonwebtoken/impl/TextCodec;->decodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v5, 0x7b

    if-ne p1, v5, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v10

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v5, 0x7d

    if-ne p1, v5, :cond_9

    .line 275
    invoke-virtual {p0, v2}, Lio/jsonwebtoken/impl/DefaultJwtParser;->readValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 276
    new-instance v5, Lio/jsonwebtoken/impl/DefaultClaims;

    invoke-direct {v5, p1}, Lio/jsonwebtoken/impl/DefaultClaims;-><init>(Ljava/util/Map;)V

    goto :goto_8

    :cond_9
    move-object v5, v4

    :goto_8
    if-eqz v0, :cond_15

    .line 282
    move-object p1, v1

    check-cast p1, Lio/jsonwebtoken/JwsHeader;

    if-eqz v1, :cond_a

    .line 287
    invoke-interface {p1}, Lio/jsonwebtoken/JwsHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-static {v6}, Lio/jsonwebtoken/lang/Strings;->hasText(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 289
    invoke-static {v6}, Lio/jsonwebtoken/SignatureAlgorithm;->forName(Ljava/lang/String;)Lio/jsonwebtoken/SignatureAlgorithm;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_14

    .line 293
    sget-object v6, Lio/jsonwebtoken/SignatureAlgorithm;->NONE:Lio/jsonwebtoken/SignatureAlgorithm;

    if-eq v4, v6, :cond_14

    .line 300
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->key:Ljava/security/Key;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->keyBytes:[B

    if-nez v6, :cond_b

    goto :goto_9

    .line 301
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A key object and key bytes cannot both be specified. Choose either."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_c
    :goto_9
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->key:Ljava/security/Key;

    if-nez v6, :cond_d

    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->keyBytes:[B

    if-eqz v6, :cond_f

    :cond_d
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    if-eqz v6, :cond_f

    .line 303
    iget-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->key:Ljava/security/Key;

    if-eqz p1, :cond_e

    const-string p1, "a key object"

    goto :goto_a

    :cond_e
    const-string p1, "key bytes"

    .line 304
    :goto_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A signing key resolver and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot both be specified. Choose either."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_f
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->key:Ljava/security/Key;

    if-nez v6, :cond_12

    .line 312
    iget-object v11, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->keyBytes:[B

    .line 314
    invoke-static {v11}, Lio/jsonwebtoken/lang/Objects;->isEmpty([B)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    if-eqz v12, :cond_11

    if-eqz v5, :cond_10

    .line 316
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    invoke-interface {v6, p1, v5}, Lio/jsonwebtoken/SigningKeyResolver;->resolveSigningKey(Lio/jsonwebtoken/JwsHeader;Lio/jsonwebtoken/Claims;)Ljava/security/Key;

    move-result-object p1

    :goto_b
    move-object v6, p1

    goto :goto_c

    .line 318
    :cond_10
    iget-object v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    invoke-interface {v6, p1, v2}, Lio/jsonwebtoken/SigningKeyResolver;->resolveSigningKey(Lio/jsonwebtoken/JwsHeader;Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    goto :goto_b

    .line 322
    :cond_11
    :goto_c
    invoke-static {v11}, Lio/jsonwebtoken/lang/Objects;->isEmpty([B)Z

    move-result p1

    if-nez p1, :cond_12

    .line 324
    invoke-virtual {v4}, Lio/jsonwebtoken/SignatureAlgorithm;->isHmac()Z

    move-result p1

    const-string v6, "Key bytes can only be specified for HMAC signatures. Please specify a PublicKey or PrivateKey instance."

    invoke-static {p1, v6}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    .line 327
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Lio/jsonwebtoken/SignatureAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v11, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :cond_12
    const-string p1, "A signing key must be specified if the specified JWT is digitally signed."

    .line 331
    invoke-static {v6, p1}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    :try_start_0
    invoke-virtual {p0, v4, v6}, Lio/jsonwebtoken/impl/DefaultJwtParser;->createSignatureValidator(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)Lio/jsonwebtoken/impl/crypto/JwtSignatureValidator;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    invoke-interface {v7, p1, v0}, Lio/jsonwebtoken/impl/crypto/JwtSignatureValidator;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_d

    .line 354
    :cond_13
    new-instance p1, Lio/jsonwebtoken/SignatureException;

    const-string v0, "JWT signature does not match locally computed signature. JWT validity cannot be asserted and should not be trusted."

    invoke-direct {p1, v0}, Lio/jsonwebtoken/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 340
    invoke-virtual {v4}, Lio/jsonwebtoken/SignatureAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parsed JWT indicates it was signed with the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature algorithm, but the specified signing key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be used to validate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " signatures.  Because the specified signing key reflects a specific and expected algorithm, and the JWT does not reflect this algorithm, it is likely that the JWT was not expected and therefore should not be trusted.  Another possibility is that the parser was configured with the incorrect signing key, but this cannot be assumed for security reasons."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Lio/jsonwebtoken/UnsupportedJwtException;

    invoke-direct {v1, v0, p1}, Lio/jsonwebtoken/UnsupportedJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :cond_14
    new-instance p1, Lio/jsonwebtoken/MalformedJwtException;

    const-string v0, "JWT string has a digest/signature, but the header does not reference a valid signature algorithm."

    invoke-direct {p1, v0}, Lio/jsonwebtoken/MalformedJwtException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_15
    :goto_d
    iget-wide v6, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_16

    const/4 v3, 0x1

    :cond_16
    if-eqz v5, :cond_1d

    .line 365
    iget-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->clock:Lio/jsonwebtoken/Clock;

    invoke-interface {p1}, Lio/jsonwebtoken/Clock;->now()Ljava/util/Date;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 370
    invoke-interface {v5}, Lio/jsonwebtoken/Claims;->getExpiration()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 373
    iget-wide v8, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    sub-long v8, v6, v8

    if-eqz v3, :cond_17

    .line 374
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_e

    :cond_17
    move-object v10, p1

    .line 375
    :goto_e
    invoke-virtual {v10, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_f

    .line 376
    :cond_18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v8, v3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JWT expired at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", a difference of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds.  Allowed clock skew: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    new-instance v0, Lio/jsonwebtoken/ExpiredJwtException;

    invoke-direct {v0, v1, v5, p1}, Lio/jsonwebtoken/ExpiredJwtException;-><init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_19
    :goto_f
    invoke-interface {v5}, Lio/jsonwebtoken/Claims;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 394
    iget-wide v8, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    add-long/2addr v6, v8

    if-eqz v3, :cond_1a

    .line 395
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_10

    :cond_1a
    move-object v3, p1

    .line 396
    :goto_10
    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_11

    .line 397
    :cond_1b
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JWT must not be accepted before "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", a difference of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds.  Allowed clock skew: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    new-instance v0, Lio/jsonwebtoken/PrematureJwtException;

    invoke-direct {v0, v1, v5, p1}, Lio/jsonwebtoken/PrematureJwtException;-><init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1c
    :goto_11
    invoke-direct {p0, v1, v5}, Lio/jsonwebtoken/impl/DefaultJwtParser;->validateExpectedClaims(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;)V

    :cond_1d
    if-eqz v5, :cond_1e

    move-object v2, v5

    :cond_1e
    if-eqz v0, :cond_1f

    .line 417
    new-instance p1, Lio/jsonwebtoken/impl/DefaultJws;

    check-cast v1, Lio/jsonwebtoken/JwsHeader;

    invoke-direct {p1, v1, v2, v0}, Lio/jsonwebtoken/impl/DefaultJws;-><init>(Lio/jsonwebtoken/JwsHeader;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 419
    :cond_1f
    new-instance p1, Lio/jsonwebtoken/impl/DefaultJwt;

    invoke-direct {p1, v1, v2}, Lio/jsonwebtoken/impl/DefaultJwt;-><init>(Lio/jsonwebtoken/Header;Ljava/lang/Object;)V

    return-object p1

    .line 242
    :cond_20
    new-instance v0, Lio/jsonwebtoken/MalformedJwtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JWT string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is missing a body/payload."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/jsonwebtoken/MalformedJwtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JWT strings must contain exactly 2 period characters. Found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    new-instance v0, Lio/jsonwebtoken/MalformedJwtException;

    invoke-direct {v0, p1}, Lio/jsonwebtoken/MalformedJwtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;Lio/jsonwebtoken/JwtHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/jsonwebtoken/JwtHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/ExpiredJwtException;,
            Lio/jsonwebtoken/MalformedJwtException;,
            Lio/jsonwebtoken/SignatureException;
        }
    .end annotation

    const-string v0, "JwtHandler argument cannot be null."

    .line 478
    invoke-static {p2, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "JWT String argument cannot be null or empty."

    .line 479
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultJwtParser;->parse(Ljava/lang/String;)Lio/jsonwebtoken/Jwt;

    move-result-object p1

    .line 483
    instance-of v0, p1, Lio/jsonwebtoken/Jws;

    if-eqz v0, :cond_1

    .line 484
    check-cast p1, Lio/jsonwebtoken/Jws;

    .line 485
    invoke-interface {p1}, Lio/jsonwebtoken/Jws;->getBody()Ljava/lang/Object;

    move-result-object v0

    .line 486
    instance-of v0, v0, Lio/jsonwebtoken/Claims;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {p2, p1}, Lio/jsonwebtoken/JwtHandler;->onClaimsJws(Lio/jsonwebtoken/Jws;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 489
    :cond_0
    invoke-interface {p2, p1}, Lio/jsonwebtoken/JwtHandler;->onPlaintextJws(Lio/jsonwebtoken/Jws;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 492
    :cond_1
    invoke-interface {p1}, Lio/jsonwebtoken/Jwt;->getBody()Ljava/lang/Object;

    move-result-object v0

    .line 493
    instance-of v0, v0, Lio/jsonwebtoken/Claims;

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {p2, p1}, Lio/jsonwebtoken/JwtHandler;->onClaimsJwt(Lio/jsonwebtoken/Jwt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 496
    :cond_2
    invoke-interface {p2, p1}, Lio/jsonwebtoken/JwtHandler;->onPlaintextJwt(Lio/jsonwebtoken/Jwt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseClaimsJws(Ljava/lang/String;)Lio/jsonwebtoken/Jws;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/jsonwebtoken/Jws<",
            "Lio/jsonwebtoken/Claims;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtParser$4;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultJwtParser$4;-><init>(Lio/jsonwebtoken/impl/DefaultJwtParser;)V

    invoke-virtual {p0, p1, v0}, Lio/jsonwebtoken/impl/DefaultJwtParser;->parse(Ljava/lang/String;Lio/jsonwebtoken/JwtHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/jsonwebtoken/Jws;

    return-object p1
.end method

.method public parseClaimsJwt(Ljava/lang/String;)Lio/jsonwebtoken/Jwt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/jsonwebtoken/Jwt<",
            "Lio/jsonwebtoken/Header;",
            "Lio/jsonwebtoken/Claims;",
            ">;"
        }
    .end annotation

    .line 514
    :try_start_0
    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtParser$2;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultJwtParser$2;-><init>(Lio/jsonwebtoken/impl/DefaultJwtParser;)V

    invoke-virtual {p0, p1, v0}, Lio/jsonwebtoken/impl/DefaultJwtParser;->parse(Ljava/lang/String;Lio/jsonwebtoken/JwtHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/jsonwebtoken/Jwt;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 521
    new-instance v0, Lio/jsonwebtoken/UnsupportedJwtException;

    const-string v1, "Signed JWSs are not supported."

    invoke-direct {v0, v1, p1}, Lio/jsonwebtoken/UnsupportedJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parsePlaintextJws(Ljava/lang/String;)Lio/jsonwebtoken/Jws;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/jsonwebtoken/Jws<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    :try_start_0
    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtParser$3;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultJwtParser$3;-><init>(Lio/jsonwebtoken/impl/DefaultJwtParser;)V

    invoke-virtual {p0, p1, v0}, Lio/jsonwebtoken/impl/DefaultJwtParser;->parse(Ljava/lang/String;Lio/jsonwebtoken/JwtHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/jsonwebtoken/Jws;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 535
    new-instance v0, Lio/jsonwebtoken/UnsupportedJwtException;

    const-string v1, "Signed JWSs are not supported."

    invoke-direct {v0, v1, p1}, Lio/jsonwebtoken/UnsupportedJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parsePlaintextJwt(Ljava/lang/String;)Lio/jsonwebtoken/Jwt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/jsonwebtoken/Jwt<",
            "Lio/jsonwebtoken/Header;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtParser$1;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultJwtParser$1;-><init>(Lio/jsonwebtoken/impl/DefaultJwtParser;)V

    invoke-virtual {p0, p1, v0}, Lio/jsonwebtoken/impl/DefaultJwtParser;->parse(Ljava/lang/String;Lio/jsonwebtoken/JwtHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/jsonwebtoken/Jwt;

    return-object p1
.end method

.method protected readValue(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 552
    :try_start_0
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Lio/jsonwebtoken/MalformedJwtException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read JSON value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/jsonwebtoken/MalformedJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public require(Ljava/lang/String;Ljava/lang/Object;)Lio/jsonwebtoken/JwtParser;
    .locals 2

    const-string v0, "claim name cannot be null or empty."

    .line 122
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value cannot be null for claim name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1, p2}, Lio/jsonwebtoken/Claims;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requireAudience(Ljava/lang/String;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireExpiration(Ljava/util/Date;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireId(Ljava/lang/String;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireIssuer(Ljava/lang/String;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public requireSubject(Ljava/lang/String;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->expectedClaims:Lio/jsonwebtoken/Claims;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/Claims;->setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public setAllowedClockSkewSeconds(J)Lio/jsonwebtoken/JwtParser;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const-wide/16 v0, 0x0

    .line 137
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->allowedClockSkewMillis:J

    return-object p0
.end method

.method public setClock(Lio/jsonwebtoken/Clock;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "Clock instance cannot be null."

    .line 130
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->clock:Lio/jsonwebtoken/Clock;

    return-object p0
.end method

.method public setCompressionCodecResolver(Lio/jsonwebtoken/CompressionCodecResolver;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "compressionCodecResolver cannot be null."

    .line 171
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->compressionCodecResolver:Lio/jsonwebtoken/CompressionCodecResolver;

    return-object p0
.end method

.method public setSigningKey(Ljava/lang/String;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "signing key cannot be null or empty."

    .line 150
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lio/jsonwebtoken/impl/TextCodec;->BASE64:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/impl/TextCodec;->decode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->keyBytes:[B

    return-object p0
.end method

.method public setSigningKey(Ljava/security/Key;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "signing key cannot be null."

    .line 157
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->key:Ljava/security/Key;

    return-object p0
.end method

.method public setSigningKey([B)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "signing key cannot be null or empty."

    .line 143
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notEmpty([BLjava/lang/String;)V

    .line 144
    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->keyBytes:[B

    return-object p0
.end method

.method public setSigningKeyResolver(Lio/jsonwebtoken/SigningKeyResolver;)Lio/jsonwebtoken/JwtParser;
    .locals 1

    const-string v0, "SigningKeyResolver cannot be null."

    .line 164
    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser;->signingKeyResolver:Lio/jsonwebtoken/SigningKeyResolver;

    return-object p0
.end method
