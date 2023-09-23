.class public final Lorg/sufficientlysecure/keychain/CertsModel$Mapper;
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
    name = "Mapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/keychain/CertsModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/RowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/CertsModel$Factory<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 112
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/CertsModel$Mapper;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$Mapper;---><init>(Lorg/sufficientlysecure/keychain/CertsModel$Factory;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic map(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/CertsModel$Mapper;->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel;

    move-result-object p1

    return-object p1
.end method

.method public map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    move-object/16 v14, p0

    move-object/16 v15, p1

    .line 118
    iget-object v0, v14, Lorg/sufficientlysecure/keychain/CertsModel$Mapper;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->creator:Lorg/sufficientlysecure/keychain/CertsModel$Creator;

    const/4 v0, 0x0

    .line 119
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 120
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    .line 121
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x3

    .line 122
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget-object v0, v14, Lorg/sufficientlysecure/keychain/CertsModel$Mapper;->certsModelFactory:Lorg/sufficientlysecure/keychain/CertsModel$Factory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/CertsModel$Factory;->verifiedAdapter:Lcom/squareup/sqldelight/ColumnAdapter;

    const/4 v10, 0x4

    .line 123
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    const/4 v0, 0x5

    .line 124
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x6

    .line 125
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 118
    invoke-interface/range {v1 .. v13}, Lorg/sufficientlysecure/keychain/CertsModel$Creator;->create(JJJJLorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;J[B)Lorg/sufficientlysecure/keychain/CertsModel;

    move-result-object v15

    return-object v15

    const-string v16, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/CertsModel$Mapper;--->map(Landroid/database/Cursor;)Lorg/sufficientlysecure/keychain/CertsModel;"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
