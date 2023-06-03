.class public Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;


# static fields
.field private static final BUFFER_SIZE:I = 0x8

.field private static final STATE_AMP:I = 0x1

.field private static final STATE_DIG1:I = 0x4

.field private static final STATE_ERROR:I = 0x5

.field private static final STATE_HASH:I = 0x2

.field private static final STATE_HEX:I = 0x3

.field private static final STATE_START:I


# instance fields
.field private control:I

.field private digits:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    return-void
.end method

.method private processChar(C)C
    .locals 10

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    const/16 v1, 0x3b

    const/4 v2, 0x3

    const/16 v3, 0xa

    const/4 v4, 0x4

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    packed-switch v0, :pswitch_data_0

    return p1

    :pswitch_0
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    return p1

    :pswitch_1
    if-gt v6, p1, :cond_0

    if-gt p1, v5, :cond_0

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/lit8 v0, v0, 0xa

    invoke-static {p1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v9, :cond_1

    iput v4, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    iget p1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p1, p1

    return p1

    :cond_1
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_1
    return p1

    :pswitch_2
    if-gt v6, p1, :cond_2

    if-le p1, v5, :cond_4

    :cond_2
    const/16 v0, 0x61

    if-gt v0, p1, :cond_3

    const/16 v0, 0x66

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x41

    if-gt v0, p1, :cond_6

    const/16 v0, 0x46

    if-gt p1, v0, :cond_6

    :cond_4
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v1, 0x10

    mul-int/lit8 v0, v0, 0x10

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v4, :cond_5

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_2

    :cond_5
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_5

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :goto_2
    return p1

    :pswitch_3
    const/16 v0, 0x78

    if-ne p1, v0, :cond_7

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_3

    :cond_7
    if-gt v6, p1, :cond_8

    if-gt p1, v5, :cond_8

    invoke-static {p1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    iput v4, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_3

    :cond_8
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_3
    return p1

    :pswitch_4
    const/16 v0, 0x23

    if-ne p1, v0, :cond_9

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_4

    :cond_9
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :goto_4
    return p1

    :pswitch_5
    const/16 v0, 0x26

    if-ne p1, v0, :cond_a

    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    :cond_a
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public read([CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v5, p2

    const/4 p2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    if-eqz p2, :cond_6

    if-ge v3, p3, :cond_6

    invoke-super {p0, v0, v4, v2}, Ljava/io/PushbackReader;->read([CII)I

    move-result p2

    if-ne p2, v2, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    const/4 v6, 0x5

    if-eqz p2, :cond_5

    aget-char v7, v0, v4

    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v7

    iget v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v8, :cond_3

    invoke-static {v7}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v7, 0x20

    :cond_2
    add-int/lit8 v4, v5, 0x1

    aput-char v7, p1, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-ne v7, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-lez v4, :cond_0

    invoke-virtual {p0, v0, v1, v4}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    iput v6, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    if-gtz v3, :cond_8

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    :cond_8
    :goto_3
    return v3
.end method
