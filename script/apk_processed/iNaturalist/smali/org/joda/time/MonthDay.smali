.class public final Lorg/joda/time/MonthDay;
.super Lorg/joda/time/base/BasePartial;
.source "MonthDay.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/MonthDay$Property;
    }
.end annotation


# static fields
.field public static final DAY_OF_MONTH:I = 0x1

.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final MONTH_OF_YEAR:I = 0x0

.field private static final PARSER:Lorg/joda/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x2900b54d463b2031L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    .line 84
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "--MM-dd"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/MonthDay;->PARSER:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/MonthDay;-><init>(IILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IILorg/joda/time/Chronology;)V
    .locals 2

    const/4 v0, 0x2

    .line 352
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0, p3}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 297
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .line 319
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .line 236
    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/MonthDay;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/MonthDay;[I)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/MonthDay;
    .locals 3

    if-eqz p0, :cond_0

    .line 185
    new-instance v0, Lorg/joda/time/MonthDay;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object v0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/MonthDay;
    .locals 2

    if-eqz p0, :cond_0

    .line 206
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object v0

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now()Lorg/joda/time/MonthDay;
    .locals 1

    .line 103
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0}, Lorg/joda/time/MonthDay;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/MonthDay;
    .locals 1

    if-eqz p0, :cond_0

    .line 135
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Chronology must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/MonthDay;
    .locals 1

    if-eqz p0, :cond_0

    .line 119
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Zone must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MonthDay;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 149
    sget-object v0, Lorg/joda/time/MonthDay;->PARSER:Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/joda/time/MonthDay;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/MonthDay;
    .locals 1

    .line 160
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object p0

    .line 161
    new-instance p1, Lorg/joda/time/MonthDay;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/joda/time/MonthDay;-><init>(II)V

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 380
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public dayOfMonth()Lorg/joda/time/MonthDay$Property;
    .locals 2

    .line 769
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    const/4 v0, 0x1

    .line 702
    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 414
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

    .line 412
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 410
    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 426
    sget-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 437
    sget-object v0, Lorg/joda/time/MonthDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getMonthOfYear()I
    .locals 1

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, v0}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/MonthDay;
    .locals 1

    const/4 v0, -0x1

    .line 630
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(I)Lorg/joda/time/MonthDay;
    .locals 1

    .line 672
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(I)Lorg/joda/time/MonthDay;
    .locals 1

    .line 652
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public monthOfYear()Lorg/joda/time/MonthDay$Property;
    .locals 2

    .line 760
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/MonthDay;
    .locals 1

    const/4 v0, 0x1

    .line 570
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(I)Lorg/joda/time/MonthDay;
    .locals 1

    .line 612
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(I)Lorg/joda/time/MonthDay;
    .locals 1

    .line 592
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/MonthDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MonthDay$Property;
    .locals 1

    .line 750
    new-instance v0, Lorg/joda/time/MonthDay$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/MonthDay$Property;-><init>(Lorg/joda/time/MonthDay;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toLocalDate(I)Lorg/joda/time/LocalDate;
    .locals 4

    .line 683
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getMonthOfYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 783
    invoke-static {v0, v1, v1}, Lorg/joda/time/format/ISODateTimeFormat;->forFields(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 796
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

    .line 808
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 810
    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/MonthDay;
    .locals 2

    .line 456
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    .line 458
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 461
    :cond_0
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;Lorg/joda/time/Chronology;)V

    .line 462
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/MonthDay;
    .locals 3

    .line 735
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 737
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/MonthDay;
    .locals 2

    .line 486
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    .line 487
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 491
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 492
    new-instance p2, Lorg/joda/time/MonthDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object p2
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/MonthDay;
    .locals 2

    .line 514
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    if-nez p2, :cond_0

    return-object p0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 519
    invoke-virtual {p0, p1}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 520
    new-instance p2, Lorg/joda/time/MonthDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object p2
.end method

.method public withMonthOfYear(I)Lorg/joda/time/MonthDay;
    .locals 3

    .line 718
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 720
    new-instance v0, Lorg/joda/time/MonthDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/MonthDay;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 544
    :goto_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 545
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 546
    invoke-virtual {p0, v2}, Lorg/joda/time/MonthDay;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 548
    invoke-virtual {p0, v2}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v0, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_2
    new-instance p1, Lorg/joda/time/MonthDay;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method
