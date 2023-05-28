.class public Lorg/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final builder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

.field private volatile entity:Lorg/apache/http/entity/mime/MultipartFormEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setBoundary(Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->builder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->entity:Lorg/apache/http/entity/mime/MultipartFormEntity;

    return-void
.end method

.method private getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->entity:Lorg/apache/http/entity/mime/MultipartFormEntity;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->builder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->buildEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->entity:Lorg/apache/http/entity/mime/MultipartFormEntity;

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->entity:Lorg/apache/http/entity/mime/MultipartFormEntity;

    return-object v0
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 1

    .line 130
    new-instance v0, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)V

    return-void
.end method

.method public addPart(Lorg/apache/http/entity/mime/FormBodyPart;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->builder:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->entity:Lorg/apache/http/entity/mime/MultipartFormEntity;

    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateBoundary()Ljava/lang/String;
    .locals 6

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 112
    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "; charset="

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .line 154
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 146
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 138
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 134
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 142
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->getEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartFormEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
