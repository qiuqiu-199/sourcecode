.class public abstract Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;
.super Ljava/lang/Object;
.source "ConnectionEngine.java"


# static fields
.field protected static mCtx:Landroid/content/Context;

.field private static sInstance:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;


# instance fields
.field protected mCancelable:Z

.field protected mExchStartTimer:Ljava/util/Date;

.field private mLatestServerVersion:I

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCancelable:Z

    .line 40
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mLatestServerVersion:I

    .line 41
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeConfig;->getMinVersionCode()I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mVersion:I

    return-void
.end method

.method public static getServerInstance(Landroid/content/Context;Ljava/lang/String;)Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;
    .locals 0

    .line 44
    sput-object p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    .line 45
    sget-object p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sInstance:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    if-nez p0, :cond_0

    .line 46
    const-class p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->instantiateImplementedClass(Ljava/lang/String;)V

    .line 47
    sget-object p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sInstance:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    check-cast p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->setHost(Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sInstance:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    return-object p0
.end method

.method private handleResponseExceptions([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 171
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 172
    iget-boolean v1, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 173
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    sget-object p2, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_WebCancelledByUser:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 175
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    sget-object p2, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_ServerNotResponding:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_1
    array-length p1, p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 177
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    sget-object p2, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_ServerNotResponding:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 181
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-gt p1, p2, :cond_3

    const-string p2, "SafeSlinger-Exchange"

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    sget-object p2, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_ServerAppMessage:I

    .line 185
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 184
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_3
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mLatestServerVersion:I

    return-object v1
.end method

.method private handleTimeoutException()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mExchStartTimer:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v0, 0x927c0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 164
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCtx:Landroid/content/Context;

    sget v2, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_ExchangeProtocolTimeoutExceeded:I

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static instantiateImplementedClass(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    sput-object p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sInstance:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected abstract assignUser([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method public assign_user([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 85
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->assignUser([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "User id created"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCancelable()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCancelable:Z

    return v0
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->mCancelable:Z

    return-void
.end method

.method public abstract shutdownConnection()V
.end method

.method protected abstract syncData([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method protected abstract syncKeyNodes([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method protected abstract syncMatch([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method protected abstract syncSignatures([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method protected abstract syncUsers([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation
.end method

.method public sync_commits([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 95
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleTimeoutException()V

    .line 99
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->syncUsers([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "User created"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sync_data([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 106
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleTimeoutException()V

    .line 110
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->syncData([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "User updated"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sync_keynodes([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 128
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleTimeoutException()V

    .line 132
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->syncKeyNodes([B)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 133
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "key node sent"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sync_match([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 139
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleTimeoutException()V

    .line 143
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->syncMatch([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "Match nonce sent"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sync_signatures([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 117
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleTimeoutException()V

    .line 121
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->syncSignatures([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->handleResponseExceptions([BI)[B

    const-string v0, "SafeSlinger-Exchange"

    const-string v1, "Signature sent"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
