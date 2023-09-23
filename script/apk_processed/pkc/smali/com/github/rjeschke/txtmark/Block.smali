.class Lcom/github/rjeschke/txtmark/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field public blockTail:Lcom/github/rjeschke/txtmark/Block;

.field public blocks:Lcom/github/rjeschke/txtmark/Block;

.field public hlDepth:I

.field public id:Ljava/lang/String;

.field public lineTail:Lcom/github/rjeschke/txtmark/Line;

.field public lines:Lcom/github/rjeschke/txtmark/Line;

.field public meta:Ljava/lang/String;

.field public next:Lcom/github/rjeschke/txtmark/Block;

.field public type:Lcom/github/rjeschke/txtmark/BlockType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    .line 30
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    .line 32
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    .line 36
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendLine(Lcom/github/rjeschke/txtmark/Line;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v1, p1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    iput-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    .line 251
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v0, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    iput-boolean v0, p1, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    .line 252
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    .line 253
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-object p1, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    .line 254
    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_0
    return-void
.end method

.method public expandListParagraphs()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    if-eq v0, v1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 272
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v3, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v2, v3, :cond_2

    .line 274
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 277
    iget-object v3, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v4, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 281
    :cond_1
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_1

    .line 284
    :cond_2
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_6

    .line 288
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_2
    if-eqz v0, :cond_6

    .line 291
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v1, v2, :cond_5

    .line 293
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    :goto_3
    if-eqz v1, :cond_5

    .line 296
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v3, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    if-ne v2, v3, :cond_4

    .line 298
    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v2, v1, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    .line 300
    :cond_4
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_3

    .line 303
    :cond_5
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_2

    :cond_6
    return-void
.end method

.method public hasLines()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeBlockQuotePrefix()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    :goto_0
    if-eqz v0, :cond_2

    .line 141
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_1

    .line 143
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 145
    iget v1, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v1, v1, 0x1

    .line 146
    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_0
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Line;->initLeading()V

    .line 152
    :cond_1
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeLeadingEmptyLines()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 165
    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/github/rjeschke/txtmark/Block;->removeLine(Lcom/github/rjeschke/txtmark/Line;)V

    .line 168
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public removeLine(Lcom/github/rjeschke/txtmark/Line;)V
    .locals 2

    .line 227
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    .line 231
    :goto_0
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_1

    .line 234
    :cond_1
    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_1
    const/4 v0, 0x0

    .line 235
    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    return-void
.end method

.method public removeListIndent(Z)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    :goto_0
    if-eqz v0, :cond_1

    .line 113
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v1, :cond_0

    .line 115
    sget-object v1, Lcom/github/rjeschke/txtmark/Block$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_1

    .line 121
    :pswitch_0
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_1

    .line 118
    :pswitch_1
    iget-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 127
    :goto_1
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Line;->initLeading()V

    .line 129
    :cond_0
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeSurroundingEmptyLines()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Block;->removeTrailingEmptyLines()V

    .line 62
    invoke-virtual {p0}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    :cond_0
    return-void
.end method

.method public removeTrailingEmptyLines()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :goto_0
    if-eqz v0, :cond_0

    .line 180
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Lcom/github/rjeschke/txtmark/Block;->removeLine(Lcom/github/rjeschke/txtmark/Line;)V

    .line 183
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;
    .locals 2

    .line 197
    new-instance v0, Lcom/github/rjeschke/txtmark/Block;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Block;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    .line 200
    iput-object p1, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    .line 201
    iget-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v1, 0x0

    .line 202
    iput-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    .line 203
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-nez p1, :cond_0

    .line 204
    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-object v1, p1, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    .line 208
    :goto_0
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    if-nez p1, :cond_1

    .line 209
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_1

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    iput-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    .line 213
    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->blockTail:Lcom/github/rjeschke/txtmark/Block;

    :goto_1
    return-object v0
.end method

.method public transfromHeadline()V
    .locals 8

    .line 71
    iget v0, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    if-lez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    .line 75
    iget-boolean v1, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v1, :cond_1

    return-void

    .line 77
    :cond_1
    iget v1, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    :goto_0
    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x23

    if-ge v1, v4, :cond_2

    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_2
    :goto_1
    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x20

    if-ge v1, v4, :cond_3

    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_3
    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 87
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    goto :goto_4

    .line 91
    :cond_4
    iget-object v4, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, v0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, -0x1

    .line 92
    :goto_2
    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 94
    :cond_5
    :goto_3
    iget-object v5, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_6

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 96
    :cond_6
    iget-object v5, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    .line 97
    iput v2, v0, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    iput v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    :goto_4
    const/4 v0, 0x6

    .line 99
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    return-void
.end method
