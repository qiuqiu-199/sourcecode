.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;
.super Ljava/lang/Object;
.source "ContentDispositionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    .line 85
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    const/4 v1, 0x0

    .line 550
    new-array v2, v1, [I

    sput-object v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    const/16 v2, 0x17

    .line 554
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    const-string v4, "\r"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "\n"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, ";"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "="

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v8, 0x5

    aput-object v4, v3, v8

    const/4 v8, 0x6

    aput-object v4, v3, v8

    const/4 v8, 0x7

    aput-object v4, v3, v8

    const/16 v8, 0x8

    aput-object v4, v3, v8

    const/16 v8, 0x9

    aput-object v4, v3, v8

    const/16 v8, 0xa

    aput-object v4, v3, v8

    const/16 v8, 0xb

    aput-object v4, v3, v8

    const/16 v8, 0xc

    aput-object v4, v3, v8

    const/16 v8, 0xd

    aput-object v4, v3, v8

    const/16 v8, 0xe

    aput-object v4, v3, v8

    const/16 v8, 0xf

    aput-object v4, v3, v8

    const/16 v8, 0x10

    aput-object v4, v3, v8

    const/16 v8, 0x11

    aput-object v4, v3, v8

    const/16 v8, 0x12

    aput-object v4, v3, v8

    const/16 v8, 0x13

    aput-object v4, v3, v8

    const/16 v8, 0x14

    aput-object v4, v3, v8

    const/16 v8, 0x15

    aput-object v4, v3, v8

    const/16 v8, 0x16

    aput-object v4, v3, v8

    sput-object v3, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 559
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DEFAULT"

    aput-object v3, v0, v1

    const-string v3, "INCOMMENT"

    aput-object v3, v0, v5

    const-string v3, "NESTED_COMMENT"

    aput-object v3, v0, v6

    const-string v3, "INQUOTEDSTRING"

    aput-object v3, v0, v7

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 567
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    .line 570
    new-array v0, v5, [J

    const-wide/32 v2, 0x1c001f

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoToken:[J

    .line 573
    new-array v0, v5, [J

    const-wide/16 v2, 0xa0

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSkip:[J

    .line 576
    new-array v0, v5, [J

    const-wide/16 v2, 0x20

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSpecial:[J

    .line 579
    new-array v0, v5, [J

    const-wide/32 v2, 0x3ff40

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V
    .locals 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    .line 583
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    .line 584
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 586
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 660
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->defaultLexState:I

    .line 594
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 614
    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 616
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjCheckNAdd(I)V
    .locals 3

    .line 839
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 841
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 842
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 91
    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 93
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v8, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    .line 97
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/2addr v9, v4

    iput v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-ne v9, v2, :cond_0

    .line 98
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 99
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x14

    const-wide/16 v15, 0x0

    if-ge v9, v10, :cond_d

    .line 101
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v9, v11, v9

    .line 104
    :goto_1
    iget-object v11, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v11, v11, v5

    const-wide/high16 v17, 0x3ff000000000000L

    const-wide v19, 0x100000200L

    const-wide v21, 0x3ff6cfafffffdffL

    const/4 v12, 0x5

    const/16 v1, 0x13

    packed-switch v11, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    and-long v23, v9, v21

    cmp-long v11, v23, v15

    if-eqz v11, :cond_2

    if-le v6, v14, :cond_1

    const/16 v6, 0x14

    .line 111
    :cond_1
    invoke-direct {v0, v13}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_2
    and-long v21, v9, v19

    cmp-long v11, v21, v15

    if-eqz v11, :cond_4

    if-le v6, v12, :cond_3

    const/4 v6, 0x5

    .line 117
    :cond_3
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    :cond_4
    :goto_2
    and-long v11, v9, v17

    cmp-long v17, v11, v15

    if-eqz v17, :cond_b

    if-le v6, v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v6

    .line 123
    :goto_3
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_1
    and-long v11, v9, v21

    cmp-long v1, v11, v15

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    if-le v6, v14, :cond_7

    const/16 v6, 0x14

    .line 144
    :cond_7
    invoke-direct {v0, v13}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :pswitch_2
    and-long v11, v9, v17

    cmp-long v17, v11, v15

    if-nez v17, :cond_8

    goto :goto_6

    :cond_8
    if-le v6, v1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v6

    .line 137
    :goto_4
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    :goto_5
    move v6, v1

    goto :goto_6

    :pswitch_3
    and-long v17, v9, v19

    cmp-long v1, v17, v15

    if-nez v1, :cond_a

    goto :goto_6

    .line 130
    :cond_a
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    const/4 v6, 0x5

    :cond_b
    :goto_6
    if-ne v5, v7, :cond_c

    goto :goto_9

    :cond_c
    const/4 v1, 0x3

    goto :goto_1

    .line 150
    :cond_d
    iget-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v1, v9, :cond_10

    .line 152
    iget-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v1, v1, 0x3f

    shl-long v9, v11, v1

    .line 155
    :cond_e
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    goto :goto_7

    :pswitch_4
    const-wide/32 v11, -0x38000002

    and-long v17, v9, v11

    cmp-long v1, v17, v15

    if-nez v1, :cond_f

    goto :goto_7

    .line 162
    :cond_f
    invoke-direct {v0, v13}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    const/16 v6, 0x14

    :goto_7
    if-ne v5, v7, :cond_e

    goto :goto_9

    .line 170
    :cond_10
    iget-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x6

    .line 171
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long v9, v11, v9

    .line 174
    :cond_11
    iget-object v11, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v11, v11, v5

    packed-switch v11, :pswitch_data_2

    goto :goto_8

    .line 178
    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v17, v11, v1

    and-long v11, v17, v9

    cmp-long v17, v11, v15

    if-nez v17, :cond_12

    goto :goto_8

    :cond_12
    if-le v6, v14, :cond_13

    const/16 v6, 0x14

    .line 182
    :cond_13
    invoke-direct {v0, v13}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    :goto_8
    if-ne v5, v7, :cond_11

    :goto_9
    if-eq v6, v2, :cond_14

    .line 190
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 191
    iput v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    const v6, 0x7fffffff

    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 195
    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x3

    rsub-int/lit8 v7, v7, 0x3

    if-ne v5, v7, :cond_15

    return v8

    .line 197
    :cond_15
    :try_start_0
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :catch_0
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 228
    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 230
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v7, p2

    const/4 v3, 0x1

    const v5, 0x7fffffff

    const/4 v6, 0x0

    .line 234
    :goto_0
    iget v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/2addr v8, v4

    iput v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-ne v8, v2, :cond_0

    .line 235
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 236
    :cond_0
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/16 v10, 0x8

    const/16 v11, 0xa

    if-ge v8, v9, :cond_3

    .line 238
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    .line 241
    :cond_1
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-le v5, v10, :cond_2

    const/16 v5, 0x8

    goto :goto_1

    :pswitch_1
    if-le v5, v11, :cond_2

    const/16 v5, 0xa

    :cond_2
    :goto_1
    if-ne v3, v6, :cond_1

    goto/16 :goto_4

    .line 255
    :cond_3
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_7

    .line 257
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    .line 260
    :cond_4
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    if-le v5, v11, :cond_6

    const/16 v5, 0xa

    goto :goto_2

    :pswitch_3
    if-le v5, v10, :cond_6

    const/16 v5, 0x8

    goto :goto_2

    :pswitch_4
    if-le v5, v11, :cond_5

    const/16 v5, 0xa

    .line 265
    :cond_5
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_6

    .line 266
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    aput v4, v8, v9

    :cond_6
    :goto_2
    if-ne v3, v6, :cond_4

    goto :goto_4

    .line 282
    :cond_7
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    const-wide/16 v12, 0x1

    .line 283
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v12, v9

    .line 286
    :cond_8
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v9, v9, v3

    const-wide/16 v14, 0x0

    packed-switch v9, :pswitch_data_2

    goto :goto_3

    .line 293
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v9, v8

    and-long v18, v16, v12

    cmp-long v9, v18, v14

    if-eqz v9, :cond_9

    if-le v5, v10, :cond_9

    const/16 v5, 0x8

    goto :goto_3

    .line 289
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v9, v8

    and-long v18, v16, v12

    cmp-long v9, v18, v14

    if-eqz v9, :cond_9

    if-le v5, v11, :cond_9

    const/16 v5, 0xa

    :cond_9
    :goto_3
    if-ne v3, v6, :cond_8

    :goto_4
    if-eq v5, v2, :cond_a

    .line 302
    iput v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 303
    iput v7, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 307
    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v6, v6, 0x3

    if-ne v3, v6, :cond_b

    return v7

    .line 309
    :cond_b
    :try_start_0
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 465
    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 467
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v7, p2

    const/4 v3, 0x1

    const v5, 0x7fffffff

    const/4 v6, 0x0

    .line 471
    :goto_0
    iget v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/2addr v8, v4

    iput v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-ne v8, v2, :cond_0

    .line 472
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 473
    :cond_0
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/16 v10, 0xb

    const/16 v11, 0xe

    if-ge v8, v9, :cond_3

    .line 475
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    .line 478
    :cond_1
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-le v5, v10, :cond_2

    const/16 v5, 0xb

    goto :goto_1

    :pswitch_1
    if-le v5, v11, :cond_2

    const/16 v5, 0xe

    :cond_2
    :goto_1
    if-ne v3, v6, :cond_1

    goto/16 :goto_4

    .line 492
    :cond_3
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_7

    .line 494
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    .line 497
    :cond_4
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    if-le v5, v11, :cond_6

    const/16 v5, 0xe

    goto :goto_2

    :pswitch_3
    if-le v5, v10, :cond_6

    const/16 v5, 0xb

    goto :goto_2

    :pswitch_4
    if-le v5, v11, :cond_5

    const/16 v5, 0xe

    .line 502
    :cond_5
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_6

    .line 503
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    aput v4, v8, v9

    :cond_6
    :goto_2
    if-ne v3, v6, :cond_4

    goto :goto_4

    .line 519
    :cond_7
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    const-wide/16 v12, 0x1

    .line 520
    iget-char v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v12, v9

    .line 523
    :cond_8
    iget-object v9, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v9, v9, v3

    const-wide/16 v14, 0x0

    packed-switch v9, :pswitch_data_2

    goto :goto_3

    .line 530
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v9, v8

    and-long v18, v16, v12

    cmp-long v9, v18, v14

    if-eqz v9, :cond_9

    if-le v5, v10, :cond_9

    const/16 v5, 0xb

    goto :goto_3

    .line 526
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v9, v8

    and-long v18, v16, v12

    cmp-long v9, v18, v14

    if-eqz v9, :cond_9

    if-le v5, v11, :cond_9

    const/16 v5, 0xe

    :cond_9
    :goto_3
    if-ne v3, v6, :cond_8

    :goto_4
    if-eq v5, v2, :cond_a

    .line 539
    iput v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 540
    iput v7, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 544
    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v6, v6, 0x3

    if-ne v3, v6, :cond_b

    return v7

    .line 546
    :cond_b
    :try_start_0
    iget-object v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 338
    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 340
    iget-object v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v7, p2

    const/4 v3, 0x1

    const v5, 0x7fffffff

    const/4 v6, 0x0

    .line 344
    :goto_0
    iget v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/2addr v8, v4

    iput v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-ne v8, v2, :cond_0

    .line 345
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 346
    :cond_0
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x0

    const/16 v15, 0x10

    const/16 v1, 0x11

    if-ge v8, v9, :cond_5

    .line 348
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v8, v10, v8

    .line 351
    :cond_1
    iget-object v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v10, v10, v3

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-le v5, v15, :cond_4

    const/16 v5, 0x10

    goto :goto_1

    :pswitch_1
    const-wide v10, -0x400000001L

    and-long v16, v8, v10

    cmp-long v10, v16, v13

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    if-le v5, v1, :cond_3

    const/16 v5, 0x11

    .line 359
    :cond_3
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    :cond_4
    :goto_1
    if-ne v3, v6, :cond_1

    :goto_2
    const v10, 0x7fffffff

    goto/16 :goto_6

    .line 369
    :cond_5
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_c

    .line 371
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v10, v8

    .line 374
    :goto_3
    iget-object v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v10, v10, v3

    const-wide/32 v16, -0x10000001

    packed-switch v10, :pswitch_data_1

    goto :goto_4

    :pswitch_2
    and-long v10, v8, v16

    cmp-long v16, v10, v13

    if-nez v16, :cond_6

    goto :goto_4

    :cond_6
    if-le v5, v1, :cond_7

    const/16 v5, 0x11

    .line 395
    :cond_7
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_3
    if-le v5, v15, :cond_a

    const/16 v5, 0x10

    goto :goto_4

    :pswitch_4
    and-long v10, v8, v16

    cmp-long v16, v10, v13

    if-eqz v16, :cond_9

    if-le v5, v1, :cond_8

    const/16 v5, 0x11

    .line 381
    :cond_8
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 383
    :cond_9
    iget-char v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_a

    .line 384
    iget-object v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v11, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v11, 0x1

    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    aput v4, v10, v11

    :cond_a
    :goto_4
    if-ne v3, v6, :cond_b

    goto :goto_2

    :cond_b
    const v2, 0x7fffffff

    goto :goto_3

    .line 403
    :cond_c
    iget-char v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    .line 404
    iget-char v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v10, v8

    .line 407
    :cond_d
    iget-object v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v10, v10, v3

    packed-switch v10, :pswitch_data_2

    goto :goto_5

    .line 418
    :pswitch_5
    sget-object v10, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v10, v2

    and-long v10, v16, v8

    cmp-long v16, v10, v13

    if-eqz v16, :cond_10

    if-le v5, v15, :cond_10

    const/16 v5, 0x10

    goto :goto_5

    .line 411
    :pswitch_6
    sget-object v10, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v10, v2

    and-long v10, v16, v8

    cmp-long v16, v10, v13

    if-nez v16, :cond_e

    goto :goto_5

    :cond_e
    if-le v5, v1, :cond_f

    const/16 v5, 0x11

    .line 415
    :cond_f
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    :cond_10
    :goto_5
    if-ne v3, v6, :cond_d

    goto/16 :goto_2

    :goto_6
    if-eq v5, v10, :cond_11

    .line 427
    iput v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 428
    iput v7, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 432
    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x3

    rsub-int/lit8 v6, v6, 0x3

    if-ne v3, v6, :cond_12

    return v7

    .line 434
    :cond_12
    :try_start_0
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    const v2, 0x7fffffff

    goto/16 :goto_0

    :catch_0
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 4

    .line 59
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 74
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    .line 72
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 70
    :cond_1
    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x6

    .line 68
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0xf

    .line 66
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 62
    :cond_5
    invoke-direct {p0, v3, v2, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    .line 215
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x7

    .line 220
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x9

    .line 218
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .line 452
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 459
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0xd

    .line 457
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0xc

    .line 455
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 327
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    .line 332
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    .line 330
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 0

    .line 79
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 80
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 81
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 83
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0

    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .line 783
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 784
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 817
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 818
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 819
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 812
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 813
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 814
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 807
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 808
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 809
    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    .line 802
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 803
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 804
    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 797
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 798
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 799
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 792
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 793
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 794
    sput v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 787
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 788
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 789
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    return-void

    .line 630
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;)V
    .locals 4

    .line 827
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 831
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    .line 678
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->BeginToken()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 687
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 688
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 689
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 693
    :goto_1
    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    const v6, 0x7fffffff

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 711
    :pswitch_0
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 712
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 713
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v4

    goto :goto_2

    .line 706
    :pswitch_1
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 707
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 708
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v4

    goto :goto_2

    .line 701
    :pswitch_2
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 702
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 703
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v4

    goto :goto_2

    .line 696
    :pswitch_3
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 697
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 698
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v4

    .line 716
    :goto_2
    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    const/4 v7, 0x1

    if-eq v5, v6, :cond_8

    .line 718
    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/2addr v5, v7

    if-ge v5, v4, :cond_1

    .line 719
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    sub-int v8, v4, v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v8}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V

    .line 720
    :cond_1
    sget-object v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoToken:[J

    iget v8, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v8, v8, 0x6

    aget-wide v8, v5, v8

    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v5, v5, 0x3f

    const-wide/16 v10, 0x1

    shl-long v12, v10, v5

    and-long v14, v8, v12

    const-wide/16 v8, 0x0

    cmp-long v5, v14, v8

    const/4 v12, -0x1

    if-eqz v5, :cond_3

    .line 722
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    .line 723
    iput-object v3, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 724
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;)V

    .line 725
    sget-object v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v12, :cond_2

    .line 726
    sget-object v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    :cond_2
    return-object v1

    .line 729
    :cond_3
    sget-object v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSkip:[J

    iget v13, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v13, v13, 0x6

    aget-wide v13, v5, v13

    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v5, v5, 0x3f

    shl-long v15, v10, v5

    and-long v17, v13, v15

    cmp-long v5, v17, v8

    if-eqz v5, :cond_6

    .line 731
    sget-object v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSpecial:[J

    iget v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v5, v6

    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v10, v5

    and-long v13, v6, v10

    cmp-long v5, v13, v8

    if-eqz v5, :cond_5

    .line 733
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v5

    if-nez v3, :cond_4

    goto :goto_3

    .line 738
    :cond_4
    iput-object v3, v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 739
    iput-object v5, v3, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    :goto_3
    move-object v3, v5

    .line 742
    :cond_5
    sget-object v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v6

    if-eq v5, v12, :cond_0

    .line 743
    sget-object v5, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v6

    iput v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 746
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->MoreLexicalActions()V

    .line 747
    sget-object v4, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v4, v4, v5

    if-eq v4, v12, :cond_7

    .line 748
    sget-object v4, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    iget v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v4, v4, v5

    iput v4, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 750
    :cond_7
    iput v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 752
    :try_start_1
    iget-object v4, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v4

    iput-char v4, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_0
    const/4 v4, 0x0

    .line 757
    :cond_8
    iget-object v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 758
    iget-object v5, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 761
    :try_start_2
    iget-object v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    iget-object v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v6, v7}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v11, v3

    move v12, v5

    const/4 v9, 0x0

    goto :goto_6

    :catch_1
    if-gt v4, v7, :cond_9

    const-string v1, ""

    goto :goto_4

    .line 764
    :cond_9
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    .line 765
    :goto_4
    iget-char v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v8, 0xa

    if-eq v6, v8, :cond_b

    iget-char v6, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v8, 0xd

    if-ne v6, v8, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v12, v2

    move v11, v3

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v11, v3

    const/4 v9, 0x1

    const/4 v12, 0x0

    :goto_6
    if-nez v9, :cond_d

    .line 773
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1, v7}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V

    if-gt v4, v7, :cond_c

    const-string v1, ""

    goto :goto_7

    .line 774
    :cond_c
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :cond_d
    :goto_7
    move-object v13, v1

    .line 776
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;

    iget v10, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    iget-char v14, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 682
    :catch_2
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    .line 684
    iput-object v3, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 6

    .line 643
    sget-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 646
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    .line 647
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 648
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 649
    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 651
    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->beginLine:I

    .line 652
    iput v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->endLine:I

    .line 653
    iput v2, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->beginColumn:I

    .line 654
    iput v4, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->endColumn:I

    return-object v0
.end method
