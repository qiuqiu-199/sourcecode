.class public final Lorg/apache/james/mime4j/stream/MimeConfig;
.super Ljava/lang/Object;
.source "MimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/stream/MimeConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

.field public static final STRICT:Lorg/apache/james/mime4j/stream/MimeConfig;


# instance fields
.field private final countLineNumbers:Z

.field private final headlessParsing:Ljava/lang/String;

.field private final malformedHeaderStartsBody:Z

.field private final maxContentLen:J

.field private final maxHeaderCount:I

.field private final maxHeaderLen:I

.field private final maxLineLen:I

.field private final strictParsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->build()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/MimeConfig;->DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setStrictParsing(Z)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMalformedHeaderStartsBody(Z)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->build()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/stream/MimeConfig;->STRICT:Lorg/apache/james/mime4j/stream/MimeConfig;

    return-void
.end method

.method constructor <init>(ZIIIJZLjava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    .line 54
    iput-boolean p7, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    .line 55
    iput-boolean p9, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    .line 56
    iput p2, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 57
    iput p3, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 58
    iput p4, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 59
    iput-wide p5, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    .line 60
    iput-object p8, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeadlessParsing()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxContentLen()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxHeaderLen()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMalformedHeaderStartsBody()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[strictParsing="

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxLineLen="

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderCount="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderLen="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxContentLen="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countLineNumbers="

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headlessParsing="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", malformedHeaderStartsBody="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
