.class public final Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;
.super Ljava/lang/Object;
.source "ApiAppsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ApiAppsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$GetCertificateQuery;,
        Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$SelectByPackageNameQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/ApiAppsModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final creator:Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;---><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Creator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCertificate(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 89
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$GetCertificateQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$GetCertificateQuery;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->getCertificate(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCertificateMapper()Lcom/squareup/sqldelight/RowMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/sqldelight/RowMapper<",
            "[B>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 103
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$1;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->getCertificateMapper()Lcom/squareup/sqldelight/RowMapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAll()Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 9

    move-object/16 v6, p0

    .line 76
    new-instance v0, Lcom/squareup/sqldelight/SqlDelightQuery;

    const-string v1, "SELECT *\n    FROM api_apps"

    new-instance v2, Lcom/squareup/sqldelight/internal/TableSet;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "api_apps"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/squareup/sqldelight/internal/TableSet;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/squareup/sqldelight/SqlDelightQuery;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->selectAll()Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectAllMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 94
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->selectAllMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByPackageName(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 84
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$SelectByPackageNameQuery;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory$SelectByPackageNameQuery;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;Ljava/lang/String;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->selectByPackageName(Ljava/lang/String;)Lcom/squareup/sqldelight/SqlDelightQuery;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public selectByPackageNameMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 99
    new-instance v0, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;-><init>(Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ApiAppsModel$Factory;--->selectByPackageNameMapper()Lorg/sufficientlysecure/keychain/ApiAppsModel$Mapper;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
