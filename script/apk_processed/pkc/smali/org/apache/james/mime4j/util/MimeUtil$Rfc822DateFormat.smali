.class final Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/MimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rfc822DateFormat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EEE, d MMM yyyy HH:mm:ss "

    .line 289
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 295
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 297
    iget-object p2, p0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;->calendar:Ljava/util/Calendar;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 298
    iget-object p3, p0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 299
    div-int/lit16 p2, p2, 0x3e8

    div-int/lit8 p2, p2, 0x3c

    if-gez p2, :cond_0

    const/16 p3, 0x2d

    .line 302
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p2, p2

    goto :goto_0

    :cond_0
    const/16 p3, 0x2b

    .line 305
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const-string p3, "%02d%02d"

    const/4 v0, 0x2

    .line 308
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    div-int/lit8 v2, p2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method
