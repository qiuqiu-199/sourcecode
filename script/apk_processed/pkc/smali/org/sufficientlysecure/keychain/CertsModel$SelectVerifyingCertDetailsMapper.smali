.class public final Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;
.super Ljava/lang/Object;
.source "CertsModel.java"

# interfaces
.implements Lcom/squareup/sqldelight/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/CertsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectVerifyingCertDetailsMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final creator:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 88
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;->creator:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;---><init>(Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 95
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;->creator:Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;

    const/4 v1, 0x0

    .line 96
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 97
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    .line 98
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 95
    invoke-interface/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsCreator;->create(JJJ)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsMapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel$SelectVerifyingCertDetailsModel;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
