.class public Lcom/github/rjeschke/txtmark/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# instance fields
.field final config:Lcom/github/rjeschke/txtmark/Configuration;

.field private final emitter:Lcom/github/rjeschke/txtmark/Emitter;

.field private final reader:Ljava/io/Reader;

.field private useExtensions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    .line 63
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    .line 64
    iput-object p2, p0, Lcom/github/rjeschke/txtmark/Processor;->config:Lcom/github/rjeschke/txtmark/Configuration;

    .line 65
    iget-boolean p1, p2, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    iput-boolean p1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    .line 66
    new-instance p1, Lcom/github/rjeschke/txtmark/Emitter;

    iget-object p2, p0, Lcom/github/rjeschke/txtmark/Processor;->config:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-direct {p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;-><init>(Lcom/github/rjeschke/txtmark/Configuration;)V

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    return-void
.end method

.method private initListBlock(Lcom/github/rjeschke/txtmark/Block;)V
    .locals 3

    .line 832
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    .line 833
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    :goto_0
    if-eqz v0, :cond_2

    .line 836
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    .line 837
    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_0

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v2, :cond_1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_1

    .line 840
    :cond_0
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v1

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 842
    :cond_1
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object p1

    sget-object v0, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    return-void
.end method

.method private process()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/Processor;->readLines()Lcom/github/rjeschke/txtmark/Block;

    move-result-object v1

    .line 1087
    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    const/4 v2, 0x0

    .line 1089
    invoke-direct {p0, v1, v2}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    .line 1090
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_0
    if-eqz v1, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    invoke-virtual {v2, v0, v1}, Lcom/github/rjeschke/txtmark/Emitter;->emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    .line 1094
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final process(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/github/rjeschke/txtmark/Processor;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p1, Lcom/github/rjeschke/txtmark/Configuration;->encoding:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, p1}, Lcom/github/rjeschke/txtmark/Processor;-><init>(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)V

    .line 155
    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Processor;->process()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readLines()Lcom/github/rjeschke/txtmark/Block;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 659
    new-instance v1, Lcom/github/rjeschke/txtmark/Block;

    invoke-direct {v1}, Lcom/github/rjeschke/txtmark/Block;-><init>()V

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 661
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_17

    const/4 v7, 0x0

    .line 665
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x1

    move v9, v3

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x4

    if-nez v3, :cond_4

    if-eq v9, v6, :cond_3

    const/16 v12, 0xd

    if-eq v9, v12, :cond_2

    packed-switch v9, :pswitch_data_0

    add-int/lit8 v10, v10, 0x1

    int-to-char v9, v9

    .line 704
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    iget-object v9, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->read()I

    move-result v9

    goto :goto_1

    .line 676
    :pswitch_0
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    if-ne v3, v12, :cond_0

    .line 679
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    :cond_0
    :goto_2
    move v9, v3

    goto :goto_4

    :pswitch_1
    and-int/lit8 v9, v10, 0x3

    sub-int/2addr v11, v9

    add-int/2addr v11, v10

    :goto_3
    if-ge v10, v11, :cond_1

    const/16 v9, 0x20

    .line 696
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 699
    :cond_1
    iget-object v9, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->read()I

    move-result v9

    goto :goto_1

    .line 684
    :cond_2
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    const/16 v9, 0xa

    if-ne v3, v9, :cond_0

    .line 687
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    goto :goto_2

    :cond_3
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 710
    :cond_4
    new-instance v3, Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {v3}, Lcom/github/rjeschke/txtmark/Line;-><init>()V

    .line 711
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 712
    invoke-virtual {v3}, Lcom/github/rjeschke/txtmark/Line;->init()V

    .line 717
    iget-boolean v6, v3, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    const/16 v10, 0x29

    const/16 v12, 0x27

    const/16 v13, 0x22

    const/16 v14, 0x28

    if-nez v6, :cond_b

    iget v6, v3, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-ge v6, v11, :cond_b

    iget-object v6, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v11, v3, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x5b

    if-ne v6, v11, :cond_b

    .line 719
    iget v6, v3, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/2addr v6, v8

    iput v6, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 721
    new-array v6, v8, [C

    const/16 v11, 0x5d

    aput-char v11, v6, v7

    invoke-virtual {v3, v6}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 723
    iget v11, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/4 v15, 0x2

    add-int/2addr v11, v15

    iget-object v4, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v11, v4, :cond_a

    .line 726
    iget-object v4, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v11, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v11, v8

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_a

    .line 728
    iget v4, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v4, v15

    iput v4, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 729
    invoke-virtual {v3}, Lcom/github/rjeschke/txtmark/Line;->skipSpaces()Z

    .line 731
    iget-object v4, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v11, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x3c

    if-ne v4, v11, :cond_5

    .line 733
    iget v4, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v4, v8

    iput v4, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 734
    new-array v4, v8, [C

    const/16 v11, 0x3e

    aput-char v11, v4, v7

    invoke-virtual {v3, v4}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v4

    .line 735
    iget v11, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v11, v8

    iput v11, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    goto :goto_5

    .line 739
    :cond_5
    new-array v4, v15, [C

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_c

    .line 746
    invoke-virtual {v3}, Lcom/github/rjeschke/txtmark/Line;->skipSpaces()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 748
    iget-object v11, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v15, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v13, :cond_6

    if-eq v11, v12, :cond_6

    if-ne v11, v14, :cond_c

    .line 752
    :cond_6
    iget v15, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v15, v8

    iput v15, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 753
    new-array v15, v8, [C

    if-ne v11, v14, :cond_7

    const/16 v11, 0x29

    :cond_7
    aput-char v11, v15, v7

    invoke-virtual {v3, v15}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    move-object v15, v11

    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    move-object v15, v11

    const/4 v11, 0x0

    goto :goto_8

    :cond_9
    const/4 v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_c
    :goto_6
    const/4 v11, 0x0

    :goto_7
    const/4 v15, 0x0

    :goto_8
    if-eqz v11, :cond_10

    if-eqz v6, :cond_10

    if-eqz v4, :cond_10

    .line 773
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v10, "$profile$"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 776
    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extended"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    iput-boolean v4, v3, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    const/4 v5, 0x0

    goto :goto_d

    .line 783
    :cond_d
    new-instance v3, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v15, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v8, :cond_e

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-ne v10, v11, :cond_e

    const/4 v7, 0x1

    :cond_e
    invoke-direct {v3, v4, v15, v7}, Lcom/github/rjeschke/txtmark/LinkRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    invoke-virtual {v4, v6, v3}, Lcom/github/rjeschke/txtmark/Emitter;->addLinkRef(Ljava/lang/String;Lcom/github/rjeschke/txtmark/LinkRef;)V

    if-nez v15, :cond_f

    goto :goto_9

    :cond_f
    move-object v3, v5

    :goto_9
    move-object v5, v3

    goto :goto_d

    .line 795
    :cond_10
    iget-boolean v4, v3, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v4, :cond_15

    if-eqz v5, :cond_15

    .line 797
    iget v4, v3, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iput v4, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 798
    iget-object v4, v3, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v6, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v13, :cond_12

    if-eq v4, v12, :cond_12

    if-ne v4, v14, :cond_11

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    .line 801
    :cond_12
    :goto_a
    iget v6, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    add-int/2addr v6, v8

    iput v6, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 802
    new-array v6, v8, [C

    if-ne v4, v14, :cond_13

    const/16 v4, 0x29

    :cond_13
    aput-char v4, v6, v7

    invoke-virtual {v3, v6}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v4

    :goto_b
    if-eqz v4, :cond_14

    .line 806
    iput-object v4, v5, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    :cond_14
    const/4 v5, 0x0

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_16

    .line 815
    iput v7, v3, Lcom/github/rjeschke/txtmark/Line;->pos:I

    .line 816
    invoke-virtual {v1, v3}, Lcom/github/rjeschke/txtmark/Block;->appendLine(Lcom/github/rjeschke/txtmark/Line;)V

    :cond_16
    :goto_d
    move v3, v9

    goto/16 :goto_0

    :cond_17
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 2
        0x20s
        0xas
    .end array-data
.end method

.method private recurse(Lcom/github/rjeschke/txtmark/Block;Z)V
    .locals 6

    .line 858
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz p2, :cond_0

    .line 862
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->removeListIndent(Z)V

    .line 863
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v1, v2}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_0

    .line 865
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Line;->stripID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 869
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v1, :cond_1

    .line 871
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_1
    if-eqz v0, :cond_29

    .line 880
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    .line 881
    sget-object v2, Lcom/github/rjeschke/txtmark/Processor$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1069
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_1

    :goto_2
    :pswitch_0
    if-eqz v0, :cond_4

    .line 1046
    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v2}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    .line 1047
    iget-boolean v5, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v5, :cond_3

    sget-object v5, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v5, :cond_3

    sget-object v5, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v5, :cond_3

    goto :goto_3

    .line 1051
    :cond_3
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 1053
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_4

    :cond_5
    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_4
    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v2

    .line 1054
    sget-object v5, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v1, v5, :cond_6

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    :goto_5
    iput-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 1055
    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v4, v1, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    .line 1056
    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v4, v1, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    .line 1057
    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    .line 1058
    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v5, v2, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v4, v5, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    iput-boolean v4, v1, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    .line 1059
    invoke-direct {p0, v2}, Lcom/github/rjeschke/txtmark/Processor;->initListBlock(Lcom/github/rjeschke/txtmark/Block;)V

    .line 1060
    iget-object v1, v2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_6
    if-eqz v1, :cond_7

    .line 1063
    invoke-direct {p0, v1, v3}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    .line 1064
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_6

    .line 1066
    :cond_7
    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Block;->expandListParagraphs()V

    goto :goto_1

    .line 1020
    :pswitch_1
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v2, :cond_8

    .line 1022
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    .line 1024
    :cond_8
    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_9

    .line 1026
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    .line 1028
    :cond_9
    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    .line 1029
    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 1030
    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_b

    .line 1032
    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v1, v2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x2

    :goto_7
    iput v3, v0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    .line 1034
    :cond_b
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v1, :cond_c

    .line 1036
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Line;->stripID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    .line 1038
    :cond_c
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->transfromHeadline()V

    .line 1039
    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    .line 1040
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto/16 :goto_1

    .line 992
    :pswitch_2
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    :goto_8
    if-eqz v0, :cond_e

    .line 995
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v1, v2, :cond_d

    goto :goto_9

    .line 1001
    :cond_d
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_8

    :cond_e
    :goto_9
    if-eqz v0, :cond_f

    .line 1005
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    :cond_f
    if-eqz v0, :cond_10

    .line 1007
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_a

    :cond_10
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_a
    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v1

    .line 1008
    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 1009
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/github/rjeschke/txtmark/Utils;->getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    .line 1010
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    .line 1011
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v3, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v3}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v2, v3, :cond_11

    .line 1013
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    .line 1015
    :cond_11
    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_1

    .line 966
    :pswitch_3
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    :goto_b
    if-eqz v0, :cond_13

    .line 969
    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v1, v2, :cond_12

    goto :goto_c

    .line 975
    :cond_12
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_b

    :cond_13
    :goto_c
    if-eqz v0, :cond_14

    .line 979
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    :cond_14
    if-eqz v0, :cond_15

    .line 981
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_d

    :cond_15
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_d
    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v1

    .line 982
    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 983
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/github/rjeschke/txtmark/Utils;->getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    .line 984
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    .line 985
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v3, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v3}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v2, v3, :cond_16

    .line 987
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    .line 989
    :cond_16
    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_1

    .line 956
    :pswitch_4
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_17

    .line 959
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    .line 961
    :cond_17
    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->RULER:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 962
    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    .line 963
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto/16 :goto_1

    :goto_e
    :pswitch_5
    if-eqz v0, :cond_19

    .line 942
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_18

    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v1, :cond_18

    iget v1, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_18

    goto :goto_f

    .line 946
    :cond_18
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_e

    :cond_19
    :goto_f
    if-eqz v0, :cond_1a

    .line 948
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_10

    :cond_1a
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_10
    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    .line 949
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 950
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    .line 951
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeBlockQuotePrefix()V

    .line 952
    invoke-direct {p0, v0, v4}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    .line 953
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto/16 :goto_1

    .line 930
    :pswitch_6
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v1, :cond_1b

    .line 933
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    .line 935
    :cond_1b
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->XML:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 936
    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    .line 937
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto/16 :goto_1

    :goto_11
    :pswitch_7
    if-eqz v0, :cond_1d

    .line 921
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_1c

    iget v1, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1d

    .line 923
    :cond_1c
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_11

    :cond_1d
    if-eqz v0, :cond_1e

    .line 925
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_12

    :cond_1e
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_12
    invoke-virtual {p1, v1}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v1

    .line 926
    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->CODE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 927
    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_1

    .line 885
    :pswitch_8
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    :goto_13
    if-eqz v0, :cond_23

    .line 886
    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_23

    .line 888
    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v2}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    if-nez p2, :cond_1f

    .line 889
    iget-boolean v3, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v3, :cond_20

    :cond_1f
    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v2, v3, :cond_20

    goto :goto_14

    .line 893
    :cond_20
    iget-boolean v3, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v3, :cond_21

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v2, v3, :cond_21

    goto :goto_14

    .line 897
    :cond_21
    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v2, v3, :cond_22

    goto :goto_14

    .line 902
    :cond_22
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_13

    :cond_23
    :goto_14
    if-eqz v0, :cond_25

    .line 905
    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_25

    if-eqz p2, :cond_24

    if-nez v1, :cond_24

    .line 907
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_15

    :cond_24
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    .line 908
    :goto_15
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 909
    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    goto :goto_17

    :cond_25
    if-eqz p2, :cond_27

    if-eqz v0, :cond_26

    .line 913
    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_27

    :cond_26
    if-nez v1, :cond_27

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_16

    :cond_27
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    :goto_16
    if-nez v0, :cond_28

    .line 914
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :cond_28
    invoke-virtual {p1, v0}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 915
    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    .line 917
    :goto_17
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto/16 :goto_1

    :cond_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
