.class public final Lorg/joda/time/LocalDateTime;
.super Lorg/joda/time/base/BaseLocal;
.source "LocalDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/LocalDateTime$Property;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:I = 0x2

.field private static final MILLIS_OF_DAY:I = 0x3

.field private static final MONTH_OF_YEAR:I = 0x1

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = -0x3baac930a5a78f0L


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private final iLocalMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 264
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    .line 435
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    .line 457
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .line 481
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/Chronology;)V
    .locals 10

    move-object v0, p0

    .line 509
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 510
    invoke-static/range {p8 .. p8}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 511
    invoke-virtual/range {v2 .. v9}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v2

    .line 513
    iput-object v1, v0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 514
    iput-wide v2, v0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 305
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 2

    .line 332
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 333
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    .line 335
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide p1

    .line 336
    iput-wide p1, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    .line 337
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 0

    .line 319
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 4

    .line 409
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 410
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 411
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 412
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 413
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 414
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object p1

    .line 415
    iget-object p2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 4

    .line 379
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 380
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 381
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 382
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 383
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 384
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object p1

    .line 385
    iget-object p2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    .line 292
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 2

    .line 278
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method private correctDstTransition(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 5

    .line 841
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 842
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 843
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    .line 844
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    :goto_0
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 848
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/32 v1, 0xea60

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 849
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    .line 852
    :cond_0
    :goto_1
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result p1

    const-wide/16 v1, 0x3e8

    if-nez p1, :cond_1

    .line 853
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 854
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    goto :goto_1

    .line 856
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    .line 857
    :cond_2
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 859
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 860
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p2

    int-to-long v3, p2

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 861
    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object p2

    .line 862
    invoke-virtual {p2, p0}, Lorg/joda/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object p1, v0

    .line 866
    :goto_3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;
    .locals 12

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 201
    new-instance v11, Lorg/joda/time/LocalDateTime;

    if-ne v0, v1, :cond_0

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_0
    rsub-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIII)V

    return-object v11

    .line 197
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;
    .locals 13

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 239
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 240
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 241
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    new-instance v8, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v1, v0, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    rem-long/2addr v9, v11

    long-to-int p0, v9

    add-int/lit16 p0, p0, 0x3e8

    rem-int/lit16 v7, p0, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIII)V

    return-object v8

    .line 235
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now()Lorg/joda/time/LocalDateTime;
    .locals 1

    .line 111
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0}, Lorg/joda/time/LocalDateTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/LocalDateTime;
    .locals 1

    if-eqz p0, :cond_0

    .line 143
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDateTime;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Chronology must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/LocalDateTime;
    .locals 1

    if-eqz p0, :cond_0

    .line 127
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Zone must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 157
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .locals 0

    .line 168
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 522
    iget-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lorg/joda/time/LocalDateTime;

    iget-wide v1, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0

    .line 525
    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    new-instance v0, Lorg/joda/time/LocalDateTime;

    iget-wide v1, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-object v3, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1941
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDateTime;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 706
    :cond_0
    instance-of v1, p1, Lorg/joda/time/LocalDateTime;

    if-eqz v1, :cond_3

    .line 707
    move-object v1, p1

    check-cast v1, Lorg/joda/time/LocalDateTime;

    .line 708
    iget-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v1, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 709
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v1, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v1, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 714
    :cond_3
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public dayOfMonth()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2013
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2022
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2004
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 676
    :cond_0
    instance-of v1, p1, Lorg/joda/time/LocalDateTime;

    if-eqz v1, :cond_2

    .line 677
    move-object v1, p1

    check-cast v1, Lorg/joda/time/LocalDateTime;

    .line 678
    iget-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v1, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v1, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 682
    :cond_2
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public era()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1932
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCenturyOfEra()I
    .locals 3

    .line 1527
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 3

    .line 1612
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 3

    .line 1623
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 3

    .line 1601
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .locals 3

    .line 1518
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 562
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 560
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 558
    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 556
    :pswitch_2
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 554
    :pswitch_3
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHourOfDay()I
    .locals 3

    .line 1633
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getLocalMillis()J
    .locals 2

    .line 651
    iget-wide v0, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    return-wide v0
.end method

.method public getMillisOfDay()I
    .locals 3

    .line 1669
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 3

    .line 1660
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 3

    .line 1642
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMonthOfYear()I
    .locals 3

    .line 1578
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 3

    .line 1651
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :pswitch_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    .line 583
    :pswitch_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    .line 581
    :pswitch_2
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    .line 579
    :pswitch_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWeekOfWeekyear()I
    .locals 3

    .line 1592
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .locals 3

    .line 1569
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 3

    .line 1554
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .locals 3

    .line 1545
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .locals 3

    .line 1536
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public hourOfDay()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2032
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 625
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result p1

    return p1
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 639
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result p1

    return p1
.end method

.method public millisOfDay()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2068
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2059
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/LocalDateTime;
    .locals 1

    const/4 v0, -0x1

    .line 1286
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDateTime;
    .locals 1

    const/4 v0, -0x1

    .line 1303
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1396
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1419
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1420
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1489
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1443
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1350
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1466
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusWeeks(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1373
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1326
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1327
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minuteOfHour()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2041
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1986
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x1

    .line 1069
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x1

    .line 1086
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1179
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1203
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1271
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1272
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1226
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1133
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1249
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1156
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1109
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1110
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/LocalDateTime$Property;
    .locals 3

    if-eqz p1, :cond_1

    .line 1505
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDateTime;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0

    .line 1506
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public secondOfMinute()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 2050
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toDate()Ljava/util/Date;
    .locals 8

    .line 787
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 788
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getYear()I

    move-result v0

    add-int/lit16 v1, v0, -0x76c

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getHourOfDay()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMinuteOfHour()I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getSecondOfMinute()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 790
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 791
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lorg/joda/time/LocalDateTime;->correctDstTransition(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toDate(Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 8

    .line 816
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 817
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 818
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getHourOfDay()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMinuteOfHour()I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getSecondOfMinute()I

    move-result v6

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 820
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 822
    invoke-direct {p0, v0, p1}, Lorg/joda/time/LocalDateTime;->correctDstTransition(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .locals 1

    const/4 v0, 0x0

    .line 727
    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 10

    .line 740
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 741
    iget-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v9

    .line 742
    new-instance p1, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getHourOfDay()I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMinuteOfHour()I

    move-result v6

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getSecondOfMinute()I

    move-result v7

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v8

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 4

    .line 755
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .locals 4

    .line 764
    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 2079
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 2090
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2092
    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2104
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2106
    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public weekOfWeekyear()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1995
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1977
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1700
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDate(III)Lorg/joda/time/LocalDateTime;
    .locals 4

    .line 903
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 904
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    .line 905
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    .line 906
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v1, v2, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 907
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 908
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1831
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfWeek(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1846
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1816
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide p1

    .line 1032
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withEra(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1685
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/LocalDateTime;
    .locals 2

    if-eqz p1, :cond_0

    .line 982
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 983
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 980
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/LocalDateTime;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-object p0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    .line 1013
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 1007
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 956
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withHourOfDay(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1862
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method withLocalMillis(J)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 881
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    :goto_0
    return-object v0
.end method

.method public withMillisOfDay(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1922
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1907
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1877
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMonthOfYear(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1781
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide p1

    .line 1055
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1892
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withTime(IIII)Lorg/joda/time/LocalDateTime;
    .locals 4

    .line 930
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 931
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    .line 932
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    .line 933
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v1, v2, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 934
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 935
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    .line 936
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1801
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withWeekyear(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1766
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1745
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYearOfCentury(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1730
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYearOfEra(I)Lorg/joda/time/LocalDateTime;
    .locals 3

    .line 1715
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public year()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1968
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1950
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/LocalDateTime$Property;
    .locals 2

    .line 1959
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
