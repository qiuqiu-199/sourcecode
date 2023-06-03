.class Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleAffix"
.end annotation


# instance fields
.field private final iText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 0

    .line 864
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 7

    .line 876
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 877
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v6

    .line 878
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr p2, v6

    return p2

    :cond_0
    xor-int/lit8 p1, p2, -0x1

    return p1
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 868
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 10

    .line 885
    iget-object v6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 886
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v9, p2

    :goto_0
    if-ge v9, v8, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v9

    move-object v3, v6

    move v5, v7

    .line 890
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9

    .line 894
    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p1, p2, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
