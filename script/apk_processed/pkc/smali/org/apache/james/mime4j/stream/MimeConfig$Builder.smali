.class public Lorg/apache/james/mime4j/stream/MimeConfig$Builder;
.super Ljava/lang/Object;
.source "MimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/stream/MimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private countLineNumbers:Z

.field private headlessParsing:Ljava/lang/String;

.field private malformedHeaderStartsBody:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxHeaderLen:I

.field private maxLineLen:I

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->strictParsing:Z

    .line 195
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->countLineNumbers:Z

    .line 196
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->malformedHeaderStartsBody:Z

    const/16 v0, 0x3e8

    .line 197
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxLineLen:I

    .line 198
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxHeaderCount:I

    const/16 v0, 0x2710

    .line 199
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxHeaderLen:I

    const-wide/16 v0, -0x1

    .line 200
    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxContentLen:J

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->headlessParsing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/james/mime4j/stream/MimeConfig;
    .locals 11

    .line 337
    new-instance v10, Lorg/apache/james/mime4j/stream/MimeConfig;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->strictParsing:Z

    iget v2, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxLineLen:I

    iget v3, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxHeaderCount:I

    iget v4, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxHeaderLen:I

    iget-wide v5, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->maxContentLen:J

    iget-boolean v7, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->countLineNumbers:Z

    iget-object v8, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->headlessParsing:Ljava/lang/String;

    iget-boolean v9, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->malformedHeaderStartsBody:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(ZIIIJZLjava/lang/String;Z)V

    return-object v10
.end method

.method public setMalformedHeaderStartsBody(Z)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->malformedHeaderStartsBody:Z

    return-object p0
.end method

.method public setStrictParsing(Z)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;
    .locals 0

    .line 233
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->strictParsing:Z

    return-object p0
.end method
