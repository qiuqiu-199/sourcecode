.class Lcom/github/rjeschke/txtmark/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field public isEmpty:Z

.field public leading:I

.field public next:Lcom/github/rjeschke/txtmark/Line;

.field public nextEmpty:Z

.field public pos:I

.field public prevEmpty:Z

.field public previous:Lcom/github/rjeschke/txtmark/Line;

.field public trailing:I

.field public value:Ljava/lang/String;

.field public xmlEndLine:Lcom/github/rjeschke/txtmark/Line;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    return-void
.end method

.method private checkHTML()Z
    .locals 9

    .line 466
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    .line 469
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    .line 471
    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-direct {p0, p0, v2}, Lcom/github/rjeschke/txtmark/Line;->readXMLComment(Lcom/github/rjeschke/txtmark/Line;I)I

    move-result v2

    if-lez v2, :cond_0

    return v4

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_c

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 480
    invoke-static {v1, v3}, Lcom/github/rjeschke/txtmark/Utils;->getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-static {v3}, Lcom/github/rjeschke/txtmark/HTML;->isHtmlBlockElement(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return v5

    :cond_1
    const-string v6, "hr"

    .line 484
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 486
    iput-object p0, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    return v4

    .line 489
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_a

    .line 494
    :goto_1
    iget-object v6, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 498
    :cond_3
    iget-object v6, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 500
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v3, 0x0

    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 506
    iget-object v6, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v1, v6, v3, v5}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v6

    if-lez v6, :cond_9

    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 511
    invoke-static {v1, v3}, Lcom/github/rjeschke/txtmark/Utils;->getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-static {v7}, Lcom/github/rjeschke/txtmark/HTML;->isHtmlBlockElement(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "hr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 515
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2f

    if-ne v3, v8, :cond_6

    .line 517
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v5

    .line 519
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 523
    :cond_6
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 526
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 528
    iput-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_3

    :cond_8
    move v3, v6

    goto :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    return v4

    :cond_c
    return v5
.end method

.method private countChars(C)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private countCharsStart(C)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private readXMLComment(Lcom/github/rjeschke/txtmark/Line;I)I
    .locals 5

    add-int/lit8 v0, p2, 0x3

    .line 336
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 338
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-eqz p1, :cond_3

    .line 343
    :goto_1
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 347
    :cond_0
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 349
    iget-object p1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 354
    iget-object v3, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 356
    iget-object v3, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_2

    .line 358
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    add-int/2addr p2, v2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;
    .locals 6

    .line 252
    iget-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v0, :cond_0

    .line 253
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->EMPTY:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 255
    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 256
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    .line 259
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 262
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    :cond_3
    const/4 v0, 0x2

    if-eqz p1, :cond_7

    .line 266
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr p1, v2

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x25

    const/16 v3, 0x7e

    const/16 v4, 0x60

    if-eq p1, v4, :cond_4

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v5, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_4

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v5, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_7

    .line 268
    :cond_4
    invoke-direct {p0, v4}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result p1

    if-lt p1, v1, :cond_5

    .line 269
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 271
    :cond_5
    invoke-direct {p0, v3}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result p1

    if-lt p1, v1, :cond_6

    .line 272
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 274
    :cond_6
    invoke-direct {p0, v2}, Lcom/github/rjeschke/txtmark/Line;->countCharsStart(C)I

    move-result p1

    if-lt p1, v1, :cond_7

    .line 275
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 279
    :cond_7
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr p1, v2

    const/16 v2, 0x2d

    if-le p1, v0, :cond_9

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_8

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_8

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x5f

    if-ne p1, v3, :cond_9

    .line 283
    :cond_8
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result p1

    if-lt p1, v1, :cond_9

    .line 284
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 287
    :cond_9
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr p1, v3

    const/16 v3, 0x20

    if-lt p1, v0, :cond_a

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_a

    .line 289
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 294
    :pswitch_1
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 298
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    sub-int/2addr p1, v0

    if-lt p1, v1, :cond_c

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 300
    iget p1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 p1, p1, 0x1

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 v0, p1, 0x1

    .line 303
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_c

    .line 304
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 307
    :cond_c
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_d

    .line 309
    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/Line;->checkHTML()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 310
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 313
    :cond_d
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean p1, p1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez p1, :cond_f

    .line 315
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object p1, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p1, v2}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result p1

    if-lez p1, :cond_e

    .line 316
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 317
    :cond_e
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object p1, p1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p1, v0}, Lcom/github/rjeschke/txtmark/Line;->countChars(C)I

    move-result p1

    if-lez p1, :cond_f

    .line 318
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    .line 321
    :cond_f
    sget-object p1, Lcom/github/rjeschke/txtmark/LineType;->OTHER:Lcom/github/rjeschke/txtmark/LineType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    .line 58
    :goto_0
    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 59
    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    goto :goto_0

    .line 61
    :cond_0
    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    goto :goto_2

    .line 67
    :cond_1
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    .line 68
    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 70
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public initLeading()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    .line 80
    :goto_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 81
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    :cond_1
    return-void
.end method

.method public varargs readUntil([C)Ljava/lang/String;
    .locals 7

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 118
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 121
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 141
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 152
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 154
    aget-char v6, p1, v4

    if-ne v2, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_4

    .line 162
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/2addr v1, v5

    goto :goto_0

    .line 167
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_5

    :cond_5
    const/16 v2, 0xa

    .line 168
    :goto_5
    array-length v4, p1

    if-ge v3, v4, :cond_7

    .line 170
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_6

    .line 172
    iput v1, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3e -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public setEmpty()V
    .locals 2

    const-string v0, ""

    .line 184
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    .line 187
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v0, v1, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v0, v1, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    :cond_1
    return-void
.end method

.method public skipSpaces()Z
    .locals 3

    .line 97
    :goto_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v1, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 98
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->pos:I

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public stripID()Ljava/lang/String;
    .locals 10

    .line 379
    iget-boolean v0, p0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 381
    :cond_0
    iget v0, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 383
    :goto_0
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5c

    if-ge v0, v6, :cond_5

    if-nez v5, :cond_5

    .line 385
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7b

    if-eq v6, v7, :cond_2

    if-eq v6, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, 0x1

    .line 388
    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 390
    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    move v0, v6

    :cond_4
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_d

    add-int/lit8 v5, v0, 0x1

    .line 410
    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    iget-object v6, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_d

    add-int/lit8 v0, v0, 0x2

    move v5, v0

    const/4 v6, 0x0

    .line 415
    :goto_2
    iget-object v8, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_a

    if-nez v6, :cond_a

    .line 417
    iget-object v8, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_7

    if-eq v8, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v5, 0x1

    .line 420
    iget-object v9, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 422
    iget-object v9, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_8

    goto :goto_3

    :cond_8
    move v5, v8

    :cond_9
    :goto_3
    add-int/2addr v5, v3

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_d

    .line 441
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 442
    iget v3, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-eqz v3, :cond_b

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v6, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v6, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_4

    .line 449
    :cond_b
    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v5, p0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 451
    :goto_4
    iput v4, p0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    .line 452
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    move-object v1, v2

    :cond_c
    return-object v1

    :cond_d
    return-object v1

    :cond_e
    :goto_5
    return-object v1
.end method
