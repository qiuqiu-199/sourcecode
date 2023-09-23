.class public Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;
    }
.end annotation


# static fields
.field private static final bullet:Landroid/text/style/BulletSpan;


# instance fields
.field private clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

.field private drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 82
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    return-void
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    .line 299
    invoke-static {p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 303
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 306
    iget v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-lez v3, :cond_0

    .line 307
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 308
    iget-object v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "\n"

    .line 317
    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    .line 320
    :cond_1
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p4, p3

    const/16 v3, 0x21

    .line 321
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 335
    invoke-static {p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 337
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 339
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 341
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-object v1
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 350
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 351
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 354
    :cond_0
    array-length v0, p1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 355
    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 356
    aget-object p0, p1, v2

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 287
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    .line 288
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2

    .line 272
    iget v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-gtz v0, :cond_0

    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    iget-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 6

    const/16 p4, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    const-string v2, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 146
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    const-string v2, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 148
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    const-string v2, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 151
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, p4, :cond_2

    const-string p4, "\n"

    .line 153
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 155
    :cond_2
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v2, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 156
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 158
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p3

    const-string p4, ". "

    invoke-interface {p3, p4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 159
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    const-string v1, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 160
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 161
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    const-string p4, "code"

    .line 163
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 164
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    const-string p4, "center"

    .line 165
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 166
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    const-string p4, "s"

    .line 167
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c

    const-string p4, "strike"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_0

    :cond_7
    const-string p4, "table"

    .line 169
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 170
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 171
    iget p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez p4, :cond_8

    .line 172
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string p4, "table placeholder"

    .line 175
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 178
    :cond_8
    iget p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    goto/16 :goto_3

    :cond_9
    const-string p4, "tr"

    .line 179
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 180
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    const-string p4, "th"

    .line 181
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 182
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_b
    const-string p4, "td"

    .line 183
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 184
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 168
    :cond_c
    :goto_0
    new-instance p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;

    invoke-direct {p4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {p0, p3, p4}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    const-string v2, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 192
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 193
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    const-string v2, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 194
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 195
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 196
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_f
    const-string v2, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 197
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    .line 198
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 199
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v0, p4, :cond_10

    const-string v0, "\n"

    .line 200
    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 204
    :cond_10
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_11

    .line 205
    sget-object v0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    invoke-virtual {v0, v1}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int/2addr p4, v0

    .line 206
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v3, :cond_11

    .line 209
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x14

    sub-int/2addr p4, v0

    .line 212
    :cond_11
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0, p4}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 213
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v5, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 214
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x14

    invoke-direct {v3, v5}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v3, v2, v4

    aput-object v0, v2, v1

    .line 213
    invoke-direct {p0, p3, p4, v4, v2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 216
    :cond_12
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 217
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_13

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v0, p4, :cond_13

    const-string p4, "\n"

    .line 218
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 220
    :cond_13
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result p4

    sub-int/2addr p4, v1

    mul-int/lit8 p4, p4, 0x14

    .line 221
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v3, :cond_14

    .line 223
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x14

    sub-int/2addr p4, v0

    .line 225
    :cond_14
    const-class v0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v2, p4}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v2, v1, v4

    invoke-direct {p0, p3, v0, v4, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    const-string p4, "code"

    .line 227
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 228
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "monospace"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_16
    const-string p4, "center"

    .line 229
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 230
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v2, v3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v2, v0, v4

    invoke-direct {p0, p3, p4, v1, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_17
    const-string p4, "s"

    .line 231
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1f

    const-string p4, "strike"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_18

    goto/16 :goto_2

    :cond_18
    const-string p4, "table"

    .line 233
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1c

    .line 234
    iget p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    sub-int/2addr p4, v1

    iput p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    .line 237
    iget p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez p4, :cond_1b

    .line 238
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 241
    iget-object v2, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    if-eqz v2, :cond_19

    .line 242
    iget-object v2, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    invoke-virtual {v2}, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->newInstance()Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    move-result-object v2

    .line 243
    invoke-virtual {v2, p4}, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->setTableHtml(Ljava/lang/String;)V

    goto :goto_1

    :cond_19
    move-object v2, v0

    .line 247
    :goto_1
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    if-eqz p4, :cond_1a

    .line 248
    iget-object p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    invoke-virtual {p4}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->newInstance()Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    move-result-object v0

    .line 251
    :cond_1a
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    invoke-direct {p0, p3, p4, v4, v3}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_3

    .line 253
    :cond_1b
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1c
    const-string p4, "tr"

    .line 255
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1d

    .line 256
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1d
    const-string p4, "th"

    .line 257
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1e

    .line 258
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1e
    const-string p4, "td"

    .line 259
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 260
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_3

    .line 232
    :cond_1f
    :goto_2
    const-class p4, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v1, v0, v4

    invoke-direct {p0, p3, p4, v4, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 264
    :cond_20
    :goto_3
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    return-void
.end method

.method overrideTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "<ul"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ul>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_UL_TAG>"

    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<ol"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ol>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_OL_TAG>"

    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<li"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</li>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_LI_TAG>"

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setClickableTableSpan(Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    return-void
.end method

.method public setDrawTableLinkSpan(Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    return-void
.end method
