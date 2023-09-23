.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# instance fields
.field private useRFC5179CompatibilityMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 49
    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    .line 79
    iput-boolean p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "UTF-8"

    .line 67
    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    .line 68
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return p0
.end method


# virtual methods
.method public isUseRFC5179CompatibilityMode()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received"

    .line 130
    invoke-static {p1, p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received"

    .line 125
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received"

    .line 113
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 7

    if-eqz p3, :cond_1

    .line 192
    new-instance v6, Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/JsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    .line 226
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 227
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const-string p3, "JsonHttpResponseHandler"

    const-string v0, "response body is null, calling onFailure(Throwable, JSONObject)"

    .line 233
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 234
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onSuccess(int, Header[], String) was not overriden, but callback was received"

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received"

    .line 101
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    const-string p1, "JsonHttpResponseHandler"

    const-string p2, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    .line 141
    new-instance v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;)V

    .line 178
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 179
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 185
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-boolean v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    if-eqz v1, :cond_2

    const-string v1, "{"

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    :cond_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "{"

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "["

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    :cond_4
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "\""

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_0
    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public setUseRFC5179CompatibilityMode(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method
