.class Lcom/github/rjeschke/txtmark/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"


# instance fields
.field private final config:Lcom/github/rjeschke/txtmark/Configuration;

.field public convertNewline2Br:Z

.field private final linkRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/rjeschke/txtmark/LinkRef;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field public useExtensions:Z


# direct methods
.method public constructor <init>(Lcom/github/rjeschke/txtmark/Configuration;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    .line 41
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    .line 49
    iget-boolean v0, p1, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    .line 50
    iget-boolean v0, p1, Lcom/github/rjeschke/txtmark/Configuration;->convertNewline2Br:Z

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    .line 51
    iget-object p1, p1, Lcom/github/rjeschke/txtmark/Configuration;->plugins:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/markdown4j/Plugin;

    .line 52
    invoke-virtual {p0, v0}, Lcom/github/rjeschke/txtmark/Emitter;->register(Lorg/markdown4j/Plugin;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static checkEntity(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 9

    const/16 v0, 0x3b

    .line 485
    invoke-static {p0, p1, p2, v0}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result p1

    const/4 p2, -0x1

    if-ltz p1, :cond_11

    .line 486
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x1

    .line 488
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x41

    const/16 v6, 0x61

    if-ne v3, v4, :cond_b

    const/4 v1, 0x2

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x58

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 503
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 505
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_3

    if-le v2, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p2

    .line 492
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_5

    return p2

    .line 494
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 496
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-lt v1, v8, :cond_6

    if-le v1, v7, :cond_8

    :cond_6
    if-lt v1, v6, :cond_7

    const/16 v3, 0x66

    if-le v1, v3, :cond_8

    :cond_7
    if-lt v1, v5, :cond_9

    const/16 v3, 0x46

    if-le v1, v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return p2

    .line 510
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p1

    .line 514
    :cond_b
    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 516
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_c

    const/16 v3, 0x7a

    if-le v2, v3, :cond_d

    :cond_c
    if-lt v2, v5, :cond_e

    const/16 v3, 0x5a

    if-le v2, v3, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return p2

    .line 520
    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/rjeschke/txtmark/HTML;->isEntity(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    const/4 p1, -0x1

    :goto_7
    return p1

    :cond_11
    :goto_8
    return p2
.end method

.method private checkHtml(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 9

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, p3, 0x1

    const/4 v3, 0x4

    .line 413
    new-array v4, v3, [C

    fill-array-data v4, :array_0

    invoke-static {v0, p2, v2, v4}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v4

    const/16 v5, 0x3e

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 414
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/github/rjeschke/txtmark/HTML;->isLinkPrefix(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 416
    invoke-static {v0, p2, v4, v5}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const-string p3, " href=\""

    .line 421
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1, p2, v1, p3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "\">"

    .line 423
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1, p2, v1, p3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "</a>"

    .line 425
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    .line 431
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 432
    new-array v3, v3, [C

    fill-array-data v3, :array_1

    invoke-static {v0, p2, v2, v3}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 433
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 435
    invoke-static {v0, p2, v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const-string p3, " href=\""

    .line 440
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "@"

    .line 443
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 444
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 445
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://maps.google.com/maps?q="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    const/16 v1, 0x2b

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 446
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\">"

    .line 447
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p3, "mailto:"

    const/4 v0, 0x7

    .line 452
    invoke-static {p1, p3, v1, v0}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 453
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1, p2, v1, p3}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p3, "\">"

    .line 454
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1, p2, v1, p3}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    :goto_0
    const-string p2, "</a>"

    .line 457
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_2
    add-int/lit8 v2, p3, 0x2

    .line 463
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 466
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    invoke-static {p1, p2, p3, v0}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result p1

    return p1

    :cond_3
    return v6

    nop

    :array_0
    .array-data 2
        0x3as
        0x20s
        0x3es
        0xas
    .end array-data

    :array_1
    .array-data 2
        0x40s
        0x20s
        0x3es
        0xas
    .end array-data
.end method

.method private checkLink(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 250
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    add-int/2addr v5, v3

    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    invoke-static {v7, v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->readMdLinkId(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v5

    const/4 v9, -0x1

    if-ge v5, v3, :cond_1

    return v9

    .line 258
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    .line 260
    invoke-static {v2, v11}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x3e

    const/16 v13, 0x22

    if-ge v11, v3, :cond_3

    .line 263
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v2, :cond_2

    .line 266
    iget-boolean v3, v2, Lcom/github/rjeschke/txtmark/LinkRef;->isAbbrev:Z

    .line 267
    iget-object v6, v2, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    .line 268
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    goto/16 :goto_5

    :cond_2
    return v9

    .line 276
    :cond_3
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x28

    const/16 v16, 0x0

    if-ne v14, v15, :cond_d

    add-int/2addr v11, v6

    .line 279
    invoke-static {v2, v11}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_4

    return v9

    .line 282
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v14, 0x3c

    if-ne v11, v14, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_6

    add-int/2addr v5, v6

    .line 284
    invoke-static {v7, v2, v5, v12}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v5

    goto :goto_2

    :cond_6
    invoke-static {v7, v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->readMdLink(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v5

    :goto_2
    if-ge v5, v3, :cond_7

    return v9

    :cond_7
    if-eqz v11, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 289
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 291
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_b

    .line 293
    invoke-static {v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v3, :cond_b

    .line 294
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_b

    add-int/lit8 v5, v5, 0x1

    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 298
    invoke-static {v7, v2, v5, v13}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v5

    if-ge v5, v3, :cond_9

    return v9

    .line 301
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v5, v6

    .line 303
    invoke-static {v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_a

    return v9

    :cond_a
    move-object/from16 v16, v3

    .line 308
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_c

    return v9

    :cond_c
    move-object v6, v11

    move-object/from16 v2, v16

    goto :goto_4

    .line 311
    :cond_d
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-ne v14, v15, :cond_11

    add-int/2addr v11, v6

    .line 314
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x5d

    .line 315
    invoke-static {v7, v2, v11, v5}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v5

    if-ge v5, v3, :cond_e

    return v9

    .line 318
    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_f
    move-object v2, v10

    .line 319
    :goto_3
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v2, :cond_10

    .line 322
    iget-object v3, v2, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    .line 323
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    move-object v6, v3

    goto :goto_4

    :cond_10
    move-object/from16 v2, v16

    move-object v6, v2

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    .line 328
    :cond_11
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v2, :cond_18

    .line 331
    iget-boolean v3, v2, Lcom/github/rjeschke/txtmark/LinkRef;->isAbbrev:Z

    .line 332
    iget-object v6, v2, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    .line 333
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    :goto_5
    if-nez v6, :cond_12

    return v9

    .line 345
    :cond_12
    sget-object v7, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v4, v7, :cond_16

    if-eqz v3, :cond_14

    if-eqz v2, :cond_14

    .line 349
    iget-boolean v3, v0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-nez v3, :cond_13

    return v9

    :cond_13
    const-string v3, "<abbr title=\""

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v2, "\">"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {v0, v1, v10, v8, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    const-string v2, "</abbr>"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 359
    :cond_14
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v3, v3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v3, v1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const-string v3, " href=\""

    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v6, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 362
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_15

    const-string v3, " title=\""

    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 367
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_15
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {v0, v1, v10, v8, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    const-string v2, "</a>"

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 376
    :cond_16
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v3, v3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v3, v1}, Lcom/github/rjeschke/txtmark/Decorator;->openImage(Ljava/lang/StringBuilder;)V

    const-string v3, " src=\""

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v6, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v3, "\" alt=\""

    .line 379
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v10, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 381
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    const-string v3, " title=\""

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v8, v3}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 386
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    const-string v2, " />"

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    return v5

    :cond_18
    return v9
.end method

.method private emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    .line 993
    iget-boolean v2, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 994
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    .line 996
    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :goto_2
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 999
    :cond_2
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    invoke-interface {p2, p1, v0, p3}, Lcom/github/rjeschke/txtmark/BlockEmitter;->emitBlock(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    :goto_3
    if-eqz p2, :cond_8

    .line 1005
    iget-boolean p3, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez p3, :cond_7

    const/4 p3, 0x4

    .line 1007
    :goto_4
    iget-object p4, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_7

    .line 1010
    iget-object p4, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v0, 0x26

    if-eq p4, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p4, v0, :cond_5

    const/16 v0, 0x3e

    if-eq p4, v0, :cond_4

    .line 1022
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    const-string p4, "&gt;"

    .line 1019
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string p4, "&lt;"

    .line 1016
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string p4, "&amp;"

    .line 1013
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_7
    const/16 p3, 0xa

    .line 1027
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_3

    :cond_8
    :goto_6
    return-void
.end method

.method private emitLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V
    .locals 2

    .line 188
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 206
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    goto :goto_0

    .line 194
    :pswitch_0
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitPluginLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitRawLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V
    .locals 5

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    .line 897
    iget-boolean v1, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_0

    .line 899
    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v3, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p2, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget v1, p2, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    if-nez v1, :cond_0

    const-string v1, "<br />"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_0
    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    if-eqz v1, :cond_1

    const-string v1, "<br />"

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_1
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 912
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    return-void
.end method

.method private emitRawLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V
    .locals 5

    .line 926
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_4

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz p2, :cond_1

    .line 931
    iget-boolean v2, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_0

    .line 933
    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 938
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 939
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 941
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3

    .line 943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 944
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v3, v3, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    invoke-static {v0, p2, v2, v3}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 947
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_2

    .line 952
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 957
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz p2, :cond_6

    .line 965
    iget-boolean v0, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v0, :cond_5

    .line 967
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 970
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_3

    :cond_6
    return-void
.end method

.method private findToken(Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 1

    .line 225
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;

    move-result-object v0

    if-ne v0, p3, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 7

    const/16 v0, 0x20

    if-lez p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 767
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    .line 768
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v2

    add-int/lit8 v3, p2, 0x1

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 770
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v4

    goto :goto_2

    :cond_2
    const/16 v4, 0x20

    :goto_2
    add-int/lit8 p2, p2, 0x3

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p2, v5, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result p1

    goto :goto_3

    :cond_3
    const/16 p1, 0x20

    :goto_3
    const/16 p2, 0x21

    const/16 v5, 0x5b

    if-eq v2, p2, :cond_28

    const/16 p2, 0x26

    if-eq v2, p2, :cond_27

    const/16 p2, 0x2a

    if-eq v2, p2, :cond_21

    const/16 p2, 0x3c

    if-eq v2, p2, :cond_1f

    const/16 v6, 0x7e

    if-eq v2, v6, :cond_1d

    const/16 v6, 0x3e

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 845
    iget-boolean p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p2, :cond_11

    const/16 p2, 0x22

    if-eq v2, p2, :cond_f

    const/16 p2, 0x28

    if-eq v2, p2, :cond_9

    if-eq v2, v6, :cond_8

    const/16 p1, 0x5e

    if-eq v2, p1, :cond_5

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_0
    const/16 p1, 0x2e

    if-ne v3, p1, :cond_11

    if-ne v4, p1, :cond_11

    .line 861
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :pswitch_1
    const/16 p1, 0x2d

    if-ne v3, p1, :cond_11

    if-ne v4, p1, :cond_4

    .line 851
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_4
    return-object p1

    :cond_5
    if-eq v1, p1, :cond_7

    if-ne v3, p1, :cond_6

    goto :goto_5

    .line 854
    :cond_6
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_6

    :cond_7
    :goto_5
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_6
    return-object p1

    :cond_8
    if-ne v3, v6, :cond_11

    .line 857
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_9
    const/16 p2, 0x43

    const/16 v0, 0x29

    if-ne v3, p2, :cond_a

    if-ne v4, v0, :cond_a

    .line 865
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_a
    const/16 p2, 0x52

    if-ne v3, p2, :cond_b

    if-ne v4, v0, :cond_b

    .line 867
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_b
    const/16 p2, 0x54

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v3, p2, :cond_c

    const/4 p2, 0x1

    goto :goto_7

    :cond_c
    const/4 p2, 0x0

    :goto_7
    const/16 v3, 0x4d

    if-ne v4, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    and-int/2addr p2, v3

    if-ne p1, v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    and-int p1, p2, v1

    if-eqz p1, :cond_11

    .line 869
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 872
    :cond_f
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    if-nez p1, :cond_10

    if-eq v3, v0, :cond_10

    .line 873
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_10
    if-eq v1, v0, :cond_11

    .line 874
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    if-nez p1, :cond_11

    .line 875
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 879
    :cond_11
    :goto_9
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :pswitch_2
    const/16 p1, 0x60

    if-ne v3, p1, :cond_12

    .line 810
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_a

    :cond_12
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_a
    return-object p1

    :pswitch_3
    const/16 p1, 0x5f

    if-ne v3, p1, :cond_15

    if-ne v1, v0, :cond_14

    if-eq v4, v0, :cond_13

    goto :goto_b

    .line 784
    :cond_13
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_c

    :cond_14
    :goto_b
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_c
    return-object p1

    .line 786
    :cond_15
    iget-boolean p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p2, :cond_17

    .line 788
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p2

    if-eqz p2, :cond_16

    if-eq v1, p1, :cond_16

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_d

    :cond_16
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_d
    return-object p1

    :cond_17
    if-ne v1, v0, :cond_19

    if-eq v3, v0, :cond_18

    goto :goto_e

    .line 790
    :cond_18
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_f

    :cond_19
    :goto_e
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_f
    return-object p1

    .line 806
    :pswitch_4
    iget-boolean p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p1, :cond_1a

    const/16 p1, 0x5d

    if-ne v3, p1, :cond_1a

    .line 807
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 808
    :cond_1a
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :pswitch_5
    if-eq v3, p2, :cond_1b

    if-eq v3, v6, :cond_1b

    const/16 p1, 0x7b

    if-eq v3, p1, :cond_1b

    const/16 p1, 0x7d

    if-eq v3, p1, :cond_1b

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    .line 836
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 834
    :cond_1b
    :pswitch_6
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 802
    :pswitch_7
    iget-boolean p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p1, :cond_1c

    if-ne v3, v5, :cond_1c

    .line 803
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 804
    :cond_1c
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 792
    :cond_1d
    iget-boolean p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p1, :cond_1e

    if-ne v3, v6, :cond_1e

    .line 794
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 796
    :cond_1e
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 839
    :cond_1f
    iget-boolean p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz p1, :cond_20

    if-ne v3, p2, :cond_20

    .line 840
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 841
    :cond_20
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_21
    if-ne v3, p2, :cond_24

    if-ne v1, v0, :cond_23

    if-eq v4, v0, :cond_22

    goto :goto_10

    .line 778
    :cond_22
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_11

    :cond_23
    :goto_10
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_11
    return-object p1

    :cond_24
    if-ne v1, v0, :cond_26

    if-eq v3, v0, :cond_25

    goto :goto_12

    .line 780
    :cond_25
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_13

    :cond_26
    :goto_12
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_13
    return-object p1

    .line 843
    :cond_27
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    :cond_28
    if-ne v3, v5, :cond_29

    .line 799
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    .line 800
    :cond_29
    sget-object p1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x27
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 6

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p3, v1, :cond_11

    .line 548
    invoke-direct {p0, p2, p3}, Lcom/github/rjeschke/txtmark/Emitter;->getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;

    move-result-object v1

    .line 549
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-eq p4, v2, :cond_2

    if-eq v1, p4, :cond_1

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne p4, v2, :cond_0

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne p4, v2, :cond_2

    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v1, v2, :cond_2

    :cond_1
    return p3

    .line 554
    :cond_2
    sget-object v2, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_5

    :pswitch_1
    const-string v1, "&ldquo;"

    .line 730
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_2
    const-string v1, "&rdquo;"

    .line 727
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_3
    const-string v1, "&raquo;"

    .line 723
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_6

    :pswitch_4
    const-string v1, "&laquo;"

    .line 719
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_6

    :pswitch_5
    const-string v1, "&hellip;"

    .line 715
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_6

    :pswitch_6
    const-string v1, "&mdash;"

    .line 711
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_6

    :pswitch_7
    const-string v1, "&ndash;"

    .line 707
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_6

    :pswitch_8
    const-string v1, "&trade;"

    .line 703
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x3

    goto/16 :goto_6

    :pswitch_9
    const-string v1, "&reg;"

    .line 699
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_6

    :pswitch_a
    const-string v1, "&copy;"

    .line 695
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_6

    .line 682
    :pswitch_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, p3, 0x2

    .line 683
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_3

    .line 684
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    if-eqz v2, :cond_3

    .line 686
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Lcom/github/rjeschke/txtmark/SpanEmitter;->emitSpan(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 p3, v1, 0x1

    goto/16 :goto_6

    .line 691
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 669
    :pswitch_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 670
    invoke-static {v0, p2, p3}, Lcom/github/rjeschke/txtmark/Emitter;->checkEntity(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4

    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_4
    const-string v1, "&amp;"

    .line 678
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 656
    :pswitch_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 657
    invoke-direct {p0, v0, p2, p3}, Lcom/github/rjeschke/txtmark/Emitter;->checkHtml(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5

    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_5
    const-string v1, "&lt;"

    .line 665
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 634
    :pswitch_e
    sget-object v2, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v1, v2, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, p3

    .line 635
    invoke-direct {p0, p2, v2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->findToken(Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v5

    if-lez v5, :cond_a

    .line 638
    sget-object p3, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v1, p3, :cond_7

    const/4 v3, 0x1

    :cond_7
    add-int p3, v5, v3

    :goto_2
    const/16 v1, 0x20

    if-ge v2, v5, :cond_8

    .line 639
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-ge v2, v5, :cond_10

    :goto_3
    add-int/lit8 v3, v5, -0x1

    .line 643
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_9

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 645
    :cond_9
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openCodeSpan(Ljava/lang/StringBuilder;)V

    .line 646
    invoke-static {p1, p2, v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 647
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeCodeSpan(Ljava/lang/StringBuilder;)V

    goto/16 :goto_6

    .line 652
    :cond_a
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 618
    :pswitch_f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, p3, 0x1

    .line 619
    invoke-direct {p0, v0, p2, v2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_b

    .line 622
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openSuper(Ljava/lang/StringBuilder;)V

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 624
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeSuper(Ljava/lang/StringBuilder;)V

    goto/16 :goto_4

    .line 629
    :cond_b
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 603
    :pswitch_10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, p3, 0x2

    .line 604
    invoke-direct {p0, v0, p2, v2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_c

    .line 607
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openStrike(Ljava/lang/StringBuilder;)V

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 609
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeStrike(Ljava/lang/StringBuilder;)V

    add-int/lit8 p3, v1, 0x1

    goto/16 :goto_6

    .line 614
    :cond_c
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 588
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, p3, 0x2

    .line 589
    invoke-direct {p0, v0, p2, v2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_d

    .line 592
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openStrong(Ljava/lang/StringBuilder;)V

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 594
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeStrong(Ljava/lang/StringBuilder;)V

    add-int/lit8 p3, v1, 0x1

    goto :goto_6

    .line 599
    :cond_d
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 572
    :pswitch_12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, p3, 0x1

    .line 573
    invoke-direct {p0, v0, p2, v2, v1}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_e

    .line 576
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openEmphasis(Ljava/lang/StringBuilder;)V

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 578
    iget-object p3, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p3, p3, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p3, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeEmphasis(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 583
    :cond_e
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 558
    :pswitch_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 559
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/github/rjeschke/txtmark/Emitter;->checkLink(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    if-lez v1, :cond_f

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_4
    move p3, v1

    goto :goto_6

    .line 567
    :cond_f
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 736
    :goto_5
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    :goto_6
    add-int/2addr p3, v4

    goto/16 :goto_0

    :cond_11
    const/4 p1, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static whitespaceToSpace(C)C
    .locals 1

    .line 753
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    :cond_0
    return p0
.end method


# virtual methods
.method public addLinkRef(Ljava/lang/String;Lcom/github/rjeschke/txtmark/LinkRef;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V
    .locals 5

    .line 83
    invoke-virtual {p2}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    .line 85
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x22

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openListItem(Ljava/lang/StringBuilder;)V

    .line 122
    iget-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " id=\""

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    iget-object v4, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openOrderedList(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openUnorderedList(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openBlockquote(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openCodeBlock(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v0, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openParagraph(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 94
    :pswitch_6
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget v4, p2, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    invoke-interface {v0, p1, v4}, Lcom/github/rjeschke/txtmark/Decorator;->openHeadline(Ljava/lang/StringBuilder;I)V

    .line 95
    iget-boolean v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " id=\""

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    iget-object v4, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :pswitch_7
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->horizontalRuler(Ljava/lang/StringBuilder;)V

    return-void

    .line 132
    :cond_2
    :goto_0
    :pswitch_8
    invoke-virtual {p2}, Lcom/github/rjeschke/txtmark/Block;->hasLines()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    goto :goto_2

    .line 138
    :cond_3
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_1
    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    .line 142
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_1

    .line 146
    :cond_4
    :goto_2
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 173
    :pswitch_9
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeListItem(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 170
    :pswitch_a
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeOrderedList(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 167
    :pswitch_b
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeUnorderedList(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 164
    :pswitch_c
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeBlockquote(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 160
    :pswitch_d
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    if-nez p2, :cond_5

    .line 161
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeCodeBlock(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 156
    :pswitch_e
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {p2, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeParagraph(Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 153
    :pswitch_f
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget p2, p2, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    invoke-interface {v0, p1, p2}, Lcom/github/rjeschke/txtmark/Decorator;->closeHeadline(Ljava/lang/StringBuilder;I)V

    :cond_5
    :goto_3
    :pswitch_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected emitPluginLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x20

    .line 1049
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 1051
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 1052
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1054
    invoke-virtual {p0, p3}, Lcom/github/rjeschke/txtmark/Emitter;->parsePluginParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, p3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 1059
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1061
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz p2, :cond_4

    .line 1064
    iget-boolean v0, p2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 1065
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1067
    :cond_3
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    :goto_2
    iget-object p2, p2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_1

    .line 1071
    :cond_4
    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/markdown4j/Plugin;

    if-eqz p2, :cond_5

    .line 1073
    invoke-virtual {p2, p1, p3, v1}, Lorg/markdown4j/Plugin;->emit(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method protected parsePluginParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1078
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "(\\w+)=\"*((?<=\")[^\"]+(?=\")|([^\\s]+))\"*"

    .line 1079
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1081
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1083
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1084
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public register(Lorg/markdown4j/Plugin;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/markdown4j/Plugin;->getIdPlugin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
