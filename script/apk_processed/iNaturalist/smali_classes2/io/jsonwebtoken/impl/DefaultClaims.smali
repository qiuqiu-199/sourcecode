.class public Lio/jsonwebtoken/impl/DefaultClaims;
.super Lio/jsonwebtoken/impl/JwtMap;
.source "DefaultClaims.java"

# interfaces
.implements Lio/jsonwebtoken/Claims;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/jsonwebtoken/impl/JwtMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/jsonwebtoken/impl/JwtMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "exp"

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "iat"

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nbf"

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 123
    :cond_2
    const-class p1, Ljava/util/Date;

    if-ne p2, p1, :cond_3

    instance-of p1, v0, Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 124
    new-instance p1, Ljava/util/Date;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 127
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_4
    new-instance v0, Lio/jsonwebtoken/RequiredTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected value to be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but was "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/jsonwebtoken/RequiredTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudience()Ljava/lang/String;
    .locals 1

    const-string v0, "aud"

    .line 58
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 2

    const-string v0, "exp"

    .line 69
    const-class v1, Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "jti"

    .line 102
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedAt()Ljava/util/Date;
    .locals 2

    const-string v0, "iat"

    .line 91
    const-class v1, Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    const-string v0, "iss"

    .line 36
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 2

    const-string v0, "nbf"

    .line 80
    const-class v1, Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    const-string v0, "sub"

    .line 47
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "aud"

    .line 63
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setAudience(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "exp"

    .line 74
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    return-object p0
.end method

.method public bridge synthetic setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "jti"

    .line 107
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "iat"

    .line 96
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    return-object p0
.end method

.method public bridge synthetic setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "iss"

    .line 41
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "nbf"

    .line 85
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    return-object p0
.end method

.method public bridge synthetic setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "sub"

    .line 52
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setSubject(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method
