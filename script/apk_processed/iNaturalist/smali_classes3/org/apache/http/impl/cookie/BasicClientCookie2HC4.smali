.class public Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;
.super Lorg/apache/http/impl/cookie/BasicClientCookieHC4;
.source "BasicClientCookie2HC4.java"

# interfaces
.implements Lorg/apache/http/cookie/SetCookie2;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b7a571e07b044e1L


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 93
    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;

    .line 94
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->ports:[I

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->ports:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->ports:[I

    :cond_0
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->discard:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->isExpired(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isPersistent()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->discard:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->discard:Z

    return-void
.end method

.method public setPorts([I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->ports:[I

    return-void
.end method
