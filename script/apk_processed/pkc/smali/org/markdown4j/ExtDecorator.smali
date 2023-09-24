.class public Lorg/markdown4j/ExtDecorator;
.super Lcom/github/rjeschke/txtmark/DefaultDecorator;
.source "ExtDecorator.java"


# instance fields
.field private attributes:Lorg/markdown4j/HtmlAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/DefaultDecorator;-><init>()V

    .line 10
    new-instance v0, Lorg/markdown4j/HtmlAttributes;

    invoke-direct {v0}, Lorg/markdown4j/HtmlAttributes;-><init>()V

    iput-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    return-void
.end method

.method private open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z
    .locals 4

    .line 40
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    invoke-virtual {v0, p2}, Lorg/markdown4j/HtmlAttributes;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "<"

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 45
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, ">"

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public horizontalRuler(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "hr"

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/>"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->horizontalRuler(Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public openBlockquote(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "blockquote"

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openBlockquote(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "pre"

    .line 77
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openCodeBlock(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "code"

    .line 83
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openCodeSpan(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openEmphasis(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "em"

    .line 107
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openEmphasis(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openHeadline(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openHeadline(Ljava/lang/StringBuilder;I)V

    :cond_0
    return-void
.end method

.method public openImage(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "img"

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openImage(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openLink(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "a"

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openLink(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openListItem(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "li"

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openListItem(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openOrderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "ol"

    .line 119
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openOrderedList(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openParagraph(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "p"

    .line 65
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openParagraph(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openStrike(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "s"

    .line 101
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openStrike(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openStrong(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "strong"

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openStrong(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openSuper(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "super"

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openSuper(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method public openUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "ul"

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openUnorderedList(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method
