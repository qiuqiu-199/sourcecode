.class public Lorg/apache/sanselan/ImageDump;
.super Ljava/lang/Object;
.source "ImageDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown"

    return-object p1

    :pswitch_0
    const-string p1, "CS_LINEAR_RGB"

    return-object p1

    :pswitch_1
    const-string p1, "CS_GRAY"

    return-object p1

    :pswitch_2
    const-string p1, "CS_PYCC"

    return-object p1

    :pswitch_3
    const-string p1, "CS_CIEXYZ"

    return-object p1

    :pswitch_4
    const-string p1, "CS_sRGB"

    return-object p1

    :cond_0
    const-string p1, "TYPE_CMYK"

    return-object p1

    :cond_1
    const-string p1, "TYPE_RGB"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/awt/image/BufferedImage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 82
    invoke-virtual {p0, v0, p1}, Lorg/apache/sanselan/ImageDump;->dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageDump;->dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ImageDump;->dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 6

    .line 95
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ": no props"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 103
    aget-object v2, v0, v1

    .line 104
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lorg/apache/sanselan/ImageDump;->colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    instance-of v0, p2, Ljava/awt/color/ICC_ColorSpace;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Unknown ColorSpace: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    check-cast p2, Ljava/awt/color/ICC_ColorSpace;

    .line 70
    invoke-virtual {p2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p2

    .line 74
    new-instance v0, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct {v0}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    .line 76
    invoke-virtual {v0, p2}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object p2

    .line 77
    invoke-virtual {p2, p1}, Lorg/apache/sanselan/icc/IccProfileInfo;->dump(Ljava/lang/String;)V

    return-void
.end method
