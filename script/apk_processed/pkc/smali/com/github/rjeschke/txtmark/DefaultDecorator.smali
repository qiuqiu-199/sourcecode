.class public Lcom/github/rjeschke/txtmark/DefaultDecorator;
.super Ljava/lang/Object;
.source "DefaultDecorator.java"

# interfaces
.implements Lcom/github/rjeschke/txtmark/Decorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeBlockquote(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</blockquote>\n"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</code></pre>\n"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</code>"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeEmphasis(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</em>"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeHeadline(Ljava/lang/StringBuilder;I)V
    .locals 1

    const-string v0, "</h"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ">\n"

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeListItem(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</li>\n"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeOrderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</ol>\n"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeParagraph(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</p>\n"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeStrike(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</s>"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeStrong(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</strong>"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeSuper(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</sup>"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public closeUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "</ul>\n"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public horizontalRuler(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<hr />\n"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openBlockquote(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<blockquote>"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<pre><code>"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<code>"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openEmphasis(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<em>"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openHeadline(Ljava/lang/StringBuilder;I)V
    .locals 1

    const-string v0, "<h"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openImage(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<img"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openLink(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<a"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openListItem(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<li"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openOrderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<ol>\n"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openParagraph(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<p>"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openStrike(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<s>"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openStrong(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<strong>"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openSuper(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<sup>"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public openUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<ul>\n"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
