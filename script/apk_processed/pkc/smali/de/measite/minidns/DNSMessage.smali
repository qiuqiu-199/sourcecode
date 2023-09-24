.class public Lde/measite/minidns/DNSMessage;
.super Ljava/lang/Object;
.source "DNSMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/measite/minidns/DNSMessage$OPCODE;,
        Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
    }
.end annotation


# instance fields
.field protected additionalResourceRecords:[Lde/measite/minidns/Record;

.field protected answers:[Lde/measite/minidns/Record;

.field protected authenticData:Z

.field protected authoritativeAnswer:Z

.field protected checkDisabled:Z

.field protected id:I

.field protected nameserverRecords:[Lde/measite/minidns/Record;

.field protected opcode:Lde/measite/minidns/DNSMessage$OPCODE;

.field protected query:Z

.field protected questions:[Lde/measite/minidns/Question;

.field protected receiveTimestamp:J

.field protected recursionAvailable:Z

.field protected recursionDesired:Z

.field protected responseCode:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field protected truncated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lde/measite/minidns/DNSMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 414
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    new-instance v0, Lde/measite/minidns/DNSMessage;

    invoke-direct {v0}, Lde/measite/minidns/DNSMessage;-><init>()V

    .line 416
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v0, Lde/measite/minidns/DNSMessage;->id:I

    .line 417
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    shr-int/lit8 v3, v2, 0xf

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 418
    :goto_0
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->query:Z

    shr-int/lit8 v3, v2, 0xb

    and-int/lit8 v3, v3, 0xf

    .line 419
    invoke-static {v3}, Lde/measite/minidns/DNSMessage$OPCODE;->getOpcode(I)Lde/measite/minidns/DNSMessage$OPCODE;

    move-result-object v3

    iput-object v3, v0, Lde/measite/minidns/DNSMessage;->opcode:Lde/measite/minidns/DNSMessage$OPCODE;

    shr-int/lit8 v3, v2, 0xa

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 420
    :goto_1
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->authoritativeAnswer:Z

    shr-int/lit8 v3, v2, 0x9

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 421
    :goto_2
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->truncated:Z

    shr-int/lit8 v3, v2, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 422
    :goto_3
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->recursionDesired:Z

    shr-int/lit8 v3, v2, 0x7

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 423
    :goto_4
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->recursionAvailable:Z

    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 424
    :goto_5
    iput-boolean v3, v0, Lde/measite/minidns/DNSMessage;->authenticData:Z

    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 425
    :goto_6
    iput-boolean v4, v0, Lde/measite/minidns/DNSMessage;->checkDisabled:Z

    and-int/lit8 v2, v2, 0xf

    .line 426
    invoke-static {v2}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->getResponseCode(I)Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    move-result-object v2

    iput-object v2, v0, Lde/measite/minidns/DNSMessage;->responseCode:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lde/measite/minidns/DNSMessage;->receiveTimestamp:J

    .line 428
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 429
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 430
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 431
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 432
    new-array v6, v2, [Lde/measite/minidns/Question;

    iput-object v6, v0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    :goto_7
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_7

    .line 434
    invoke-static {v1, p0}, Lde/measite/minidns/Question;->parse(Ljava/io/DataInputStream;[B)Lde/measite/minidns/Question;

    move-result-object v2

    .line 435
    iget-object v7, v0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    aput-object v2, v7, v6

    move v2, v6

    goto :goto_7

    .line 437
    :cond_7
    new-array v2, v3, [Lde/measite/minidns/Record;

    iput-object v2, v0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    :goto_8
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_8

    .line 439
    new-instance v3, Lde/measite/minidns/Record;

    invoke-direct {v3}, Lde/measite/minidns/Record;-><init>()V

    .line 440
    invoke-virtual {v3, v1, p0}, Lde/measite/minidns/Record;->parse(Ljava/io/DataInputStream;[B)V

    .line 441
    iget-object v6, v0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    aput-object v3, v6, v2

    move v3, v2

    goto :goto_8

    .line 443
    :cond_8
    new-array v2, v4, [Lde/measite/minidns/Record;

    iput-object v2, v0, Lde/measite/minidns/DNSMessage;->nameserverRecords:[Lde/measite/minidns/Record;

    :goto_9
    add-int/lit8 v2, v4, -0x1

    if-lez v4, :cond_9

    .line 445
    new-instance v3, Lde/measite/minidns/Record;

    invoke-direct {v3}, Lde/measite/minidns/Record;-><init>()V

    .line 446
    invoke-virtual {v3, v1, p0}, Lde/measite/minidns/Record;->parse(Ljava/io/DataInputStream;[B)V

    .line 447
    iget-object v4, v0, Lde/measite/minidns/DNSMessage;->nameserverRecords:[Lde/measite/minidns/Record;

    aput-object v3, v4, v2

    move v4, v2

    goto :goto_9

    .line 449
    :cond_9
    new-array v2, v5, [Lde/measite/minidns/Record;

    iput-object v2, v0, Lde/measite/minidns/DNSMessage;->additionalResourceRecords:[Lde/measite/minidns/Record;

    :goto_a
    add-int/lit8 v2, v5, -0x1

    if-lez v5, :cond_a

    .line 452
    new-instance v3, Lde/measite/minidns/Record;

    invoke-direct {v3}, Lde/measite/minidns/Record;-><init>()V

    .line 453
    invoke-virtual {v3, v1, p0}, Lde/measite/minidns/Record;->parse(Ljava/io/DataInputStream;[B)V

    .line 454
    iget-object v4, v0, Lde/measite/minidns/DNSMessage;->additionalResourceRecords:[Lde/measite/minidns/Record;

    aput-object v3, v4, v2

    move v5, v2

    goto :goto_a

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getAnswers()[Lde/measite/minidns/Record;
    .locals 1

    .line 497
    iget-object v0, p0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 208
    iget v0, p0, Lde/measite/minidns/DNSMessage;->id:I

    return v0
.end method

.method public getResponseCode()Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
    .locals 1

    .line 481
    iget-object v0, p0, Lde/measite/minidns/DNSMessage;->responseCode:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    return-object v0
.end method

.method public setId(I)V
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 216
    iput p1, p0, Lde/measite/minidns/DNSMessage;->id:I

    return-void
.end method

.method public varargs setQuestions([Lde/measite/minidns/Question;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    return-void
.end method

.method public setRecursionDesired(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lde/measite/minidns/DNSMessage;->recursionDesired:Z

    return-void
.end method

.method public toArray()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 348
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    iget-boolean v2, p0, Lde/measite/minidns/DNSMessage;->query:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 353
    :goto_0
    iget-object v4, p0, Lde/measite/minidns/DNSMessage;->opcode:Lde/measite/minidns/DNSMessage$OPCODE;

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, p0, Lde/measite/minidns/DNSMessage;->opcode:Lde/measite/minidns/DNSMessage$OPCODE;

    invoke-virtual {v4}, Lde/measite/minidns/DNSMessage$OPCODE;->getValue()B

    move-result v4

    shl-int/lit8 v4, v4, 0xb

    add-int/2addr v2, v4

    .line 356
    :cond_1
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->authoritativeAnswer:Z

    if-eqz v4, :cond_2

    add-int/lit16 v2, v2, 0x400

    .line 359
    :cond_2
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->truncated:Z

    if-eqz v4, :cond_3

    add-int/lit16 v2, v2, 0x200

    .line 362
    :cond_3
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->recursionDesired:Z

    if-eqz v4, :cond_4

    add-int/lit16 v2, v2, 0x100

    .line 365
    :cond_4
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->recursionAvailable:Z

    if-eqz v4, :cond_5

    add-int/lit16 v2, v2, 0x80

    .line 368
    :cond_5
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->authenticData:Z

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x20

    .line 371
    :cond_6
    iget-boolean v4, p0, Lde/measite/minidns/DNSMessage;->checkDisabled:Z

    if-eqz v4, :cond_7

    add-int/lit8 v2, v2, 0x10

    .line 374
    :cond_7
    iget-object v4, p0, Lde/measite/minidns/DNSMessage;->responseCode:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    if-eqz v4, :cond_8

    .line 375
    iget-object v4, p0, Lde/measite/minidns/DNSMessage;->responseCode:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    invoke-virtual {v4}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->getValue()B

    move-result v4

    add-int/2addr v2, v4

    .line 377
    :cond_8
    iget v4, p0, Lde/measite/minidns/DNSMessage;->id:I

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-short v2, v2

    .line 378
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 379
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    if-nez v2, :cond_9

    .line 380
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 382
    :cond_9
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 384
    :goto_1
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    if-nez v2, :cond_a

    .line 385
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 387
    :cond_a
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 389
    :goto_2
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->nameserverRecords:[Lde/measite/minidns/Record;

    if-nez v2, :cond_b

    .line 390
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 392
    :cond_b
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->nameserverRecords:[Lde/measite/minidns/Record;

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 394
    :goto_3
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->additionalResourceRecords:[Lde/measite/minidns/Record;

    if-nez v2, :cond_c

    .line 395
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_4

    .line 397
    :cond_c
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->additionalResourceRecords:[Lde/measite/minidns/Record;

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 399
    :goto_4
    iget-object v2, p0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    array-length v4, v2

    :goto_5
    if-ge v3, v4, :cond_d

    aget-object v5, v2, v3

    .line 400
    invoke-virtual {v5}, Lde/measite/minidns/Question;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 402
    :cond_d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- DNSMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/measite/minidns/DNSMessage;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --\nQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/DNSMessage;->questions:[Lde/measite/minidns/Question;

    .line 518
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/DNSMessage;->nameserverRecords:[Lde/measite/minidns/Record;

    .line 519
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/DNSMessage;->answers:[Lde/measite/minidns/Record;

    .line 520
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ARR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/measite/minidns/DNSMessage;->additionalResourceRecords:[Lde/measite/minidns/Record;

    .line 521
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
