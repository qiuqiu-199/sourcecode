.class Lcom/github/rjeschke/txtmark/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static RND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    return-void
.end method

.method public static final appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v0, "&gt;"

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "&lt;"

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v0, "&amp;"

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final appendDecEntity(Ljava/lang/StringBuilder;C)V
    .locals 1

    const-string v0, "&#"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    .line 430
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final appendHexEntity(Ljava/lang/StringBuilder;C)V
    .locals 1

    const-string v0, "&#x"

    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    .line 445
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_4

    .line 465
    invoke-static {}, Lcom/github/rjeschke/txtmark/Utils;->rnd()I

    move-result v0

    .line 466
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x208

    if-ge v0, v2, :cond_1

    .line 483
    invoke-static {p0, v1}, Lcom/github/rjeschke/txtmark/Utils;->appendDecEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 485
    :cond_1
    invoke-static {p0, v1}, Lcom/github/rjeschke/txtmark/Utils;->appendHexEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    :cond_2
    :pswitch_0
    const/16 v2, 0x200

    if-ge v0, v2, :cond_3

    .line 475
    invoke-static {p0, v1}, Lcom/github/rjeschke/txtmark/Utils;->appendDecEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 477
    :cond_3
    invoke-static {p0, v1}, Lcom/github/rjeschke/txtmark/Utils;->appendHexEntity(Ljava/lang/StringBuilder;C)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 394
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v0, "&apos;"

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v0, "&amp;"

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v0, "&gt;"

    .line 403
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "&lt;"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v0, "&quot;"

    .line 406
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final escape(Ljava/lang/StringBuilder;CI)I
    .locals 1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/16 p1, 0x5c

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p2

    .line 90
    :cond_0
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    return p2

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 651
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 653
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 654
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x60

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static final getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    .line 523
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final readMdLink(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 192
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2, p2}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result p2

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-ne v1, v0, :cond_2

    :goto_1
    const/4 v3, 0x1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    goto :goto_4

    .line 219
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/2addr p2, v0

    goto :goto_0

    .line 224
    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_5

    const/4 p2, -0x1

    :cond_5
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final readMdLinkId(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 242
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_2

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_0

    .line 263
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 253
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v2, 0x20

    .line 249
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 271
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_6

    const/4 p2, -0x1

    :cond_6
    return p2
.end method

.method public static final readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I
    .locals 1

    .line 329
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 331
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 338
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_2

    const/4 p2, -0x1

    :cond_2
    return p2
.end method

.method public static final varargs readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I
    .locals 4

    .line 291
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 297
    aget-char v3, p3, v2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    .line 305
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 309
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_4

    const/4 p2, -0x1

    :cond_4
    return p2
.end method

.method public static final readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I
    .locals 3

    .line 158
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result p2

    goto :goto_1

    :cond_0
    if-ne v0, p3, :cond_1

    goto :goto_2

    .line 169
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 174
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_3

    const/4 p2, -0x1

    :cond_3
    return p2
.end method

.method public static final varargs readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I
    .locals 5

    .line 114
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result p2

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 124
    :goto_1
    array-length v4, p3

    if-ge v3, v4, :cond_2

    .line 126
    aget-char v4, p3, v3

    if-ne v0, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    goto :goto_4

    .line 134
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/2addr p2, v2

    goto :goto_0

    .line 139
    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_5

    const/4 p2, -0x1

    :cond_5
    return p2
.end method

.method public static final readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I
    .locals 5

    add-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    .line 548
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    add-int/lit8 v0, p2, 0x2

    const/4 p2, 0x1

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x21

    if-ne p2, v2, :cond_1

    const-string p1, "<!"

    .line 555
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eqz p3, :cond_4

    .line 565
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-static {p3, p1, v0, v2}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 569
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-static {v2}, Lcom/github/rjeschke/txtmark/HTML;->isUnsafeHtmlElement(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "&lt;"

    .line 572
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    .line 574
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    :cond_3
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 p3, 0x3c

    .line 580
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 582
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    :cond_5
    new-array p2, v2, [C

    fill-array-data p2, :array_1

    invoke-static {p0, p1, v0, p2}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v0

    :cond_6
    :goto_1
    if-ne v0, v1, :cond_7

    return v1

    .line 587
    :cond_7
    new-array p2, v3, [C

    fill-array-data p2, :array_2

    invoke-static {p0, p1, v0, p2}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result p2

    .line 588
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x3e

    if-ne p3, v4, :cond_8

    const-string p3, " /"

    .line 590
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    .line 591
    invoke-static {p0, p1, p2, v0}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result p2

    if-ne p2, v1, :cond_8

    return v1

    .line 595
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_9

    .line 597
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_9
    return v1

    :catch_0
    return v1

    :array_0
    .array-data 2
        0x20s
        0x2fs
        0x3es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x20s
        0x2fs
        0x3es
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2fs
        0x3es
    .end array-data
.end method

.method public static final rnd()I
    .locals 2

    .line 35
    sget v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    const v1, 0x19660d

    mul-int v0, v0, v1

    const v1, 0x3c6ef35f

    add-int/2addr v0, v1

    sput v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    ushr-int/lit8 v0, v0, 0x16

    return v0
.end method

.method public static final skipSpaces(Ljava/lang/String;I)I
    .locals 2

    .line 50
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method
