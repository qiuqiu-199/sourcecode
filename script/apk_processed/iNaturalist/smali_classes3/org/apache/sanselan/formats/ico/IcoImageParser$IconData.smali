.class Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;
.super Ljava/lang/Object;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconData"
.end annotation


# instance fields
.field public final color_map:[B

.field public final header:Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;

.field public final iconInfo:Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

.field public final palette:[B

.field public final scanline_size:I

.field public final t_scanline_size:I

.field public final transparency_map:[B


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;[B[BI[BI)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    .line 270
    iput-object p2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->header:Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;

    .line 271
    iput-object p3, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    .line 272
    iput-object p4, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    .line 273
    iput p5, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    .line 274
    iput-object p6, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->transparency_map:[B

    .line 275
    iput p7, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->t_scanline_size:I

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    .line 280
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "IconData"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconInfo;->dump()V

    .line 283
    iget-object v0, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->header:Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/ico/IcoImageParser$BitmapHeader;->dump()V

    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "scanline_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->scanline_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "t_scanline_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->t_scanline_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "palette: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->palette:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "color_map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->color_map:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "transparency_map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->transparency_map:[B

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;->transparency_map:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
